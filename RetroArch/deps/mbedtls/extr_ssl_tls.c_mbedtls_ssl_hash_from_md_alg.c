
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char MBEDTLS_SSL_HASH_MD5 ;
 unsigned char MBEDTLS_SSL_HASH_NONE ;
 unsigned char MBEDTLS_SSL_HASH_SHA1 ;
 unsigned char MBEDTLS_SSL_HASH_SHA224 ;
 unsigned char MBEDTLS_SSL_HASH_SHA256 ;
 unsigned char MBEDTLS_SSL_HASH_SHA384 ;
 unsigned char MBEDTLS_SSL_HASH_SHA512 ;

unsigned char mbedtls_ssl_hash_from_md_alg( int md )
{
    switch( md )
    {
        default:
            return( MBEDTLS_SSL_HASH_NONE );
    }
}
