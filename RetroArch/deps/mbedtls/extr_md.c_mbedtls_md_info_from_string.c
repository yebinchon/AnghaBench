
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_info_t ;


 int MBEDTLS_MD_MD2 ;
 int MBEDTLS_MD_MD4 ;
 int MBEDTLS_MD_MD5 ;
 int MBEDTLS_MD_RIPEMD160 ;
 int MBEDTLS_MD_SHA1 ;
 int MBEDTLS_MD_SHA224 ;
 int MBEDTLS_MD_SHA256 ;
 int MBEDTLS_MD_SHA384 ;
 int MBEDTLS_MD_SHA512 ;
 int const* mbedtls_md_info_from_type (int ) ;
 int strcmp (char*,char const*) ;

const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name )
{
    if( ((void*)0) == md_name )
        return( ((void*)0) );
    return( ((void*)0) );
}
