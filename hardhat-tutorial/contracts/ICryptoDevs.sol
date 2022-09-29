// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * call the CryptoDevs Contract that you deployed for the previous level to check for owners of CryptoDev NFT's.
 * we need to call tokenOfOwnerByIndex and balanceOf methods,
 * we can create an interface for CryptoDevs contract with only these two functions. This way we save gas as we do not need to inherit and deploy the entire CryptoDevs Contract
 */
interface ICryptoDevs {
    /**
     * @dev Returns a token ID owned by `owner` at a given `index` of its token list.
     * Use along with {balanceOf} to enumerate all of ``owner``'s tokens.
     */
    function tokenOfOwnerByIndex(address owner, uint256 index)
        external
        view
        returns (uint256 tokenId);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);
}