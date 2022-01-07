
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;
 int const mbedtls_md2_info ;
 int const mbedtls_md4_info ;
 int const mbedtls_md5_info ;
 int const mbedtls_ripemd160_info ;
 int const mbedtls_sha1_info ;
 int const mbedtls_sha224_info ;
 int const mbedtls_sha256_info ;
 int const mbedtls_sha384_info ;
 int const mbedtls_sha512_info ;

const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type )
{
    switch( md_type )
    {
        default:
            return( ((void*)0) );
    }
}
