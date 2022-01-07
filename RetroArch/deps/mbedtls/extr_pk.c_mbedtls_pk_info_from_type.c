
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_type_t ;
typedef int mbedtls_pk_info_t ;






 int const mbedtls_ecdsa_info ;
 int const mbedtls_eckey_info ;
 int const mbedtls_eckeydh_info ;
 int const mbedtls_rsa_info ;

const mbedtls_pk_info_t * mbedtls_pk_info_from_type( mbedtls_pk_type_t pk_type )
{
    switch( pk_type ) {
        default:
            return( ((void*)0) );
    }
}
