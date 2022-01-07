
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_type_t ;


 int MBEDTLS_MD_MD5 ;
 int MBEDTLS_MD_NONE ;
 int MBEDTLS_MD_SHA1 ;
 int MBEDTLS_MD_SHA224 ;
 int MBEDTLS_MD_SHA256 ;
 int MBEDTLS_MD_SHA384 ;
 int MBEDTLS_MD_SHA512 ;







mbedtls_md_type_t mbedtls_ssl_md_alg_from_hash( unsigned char hash )
{
    switch( hash )
    {
        default:
            return( MBEDTLS_MD_NONE );
    }
}
