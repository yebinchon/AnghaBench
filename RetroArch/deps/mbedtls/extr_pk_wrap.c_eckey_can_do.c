
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbedtls_pk_type_t ;


 scalar_t__ MBEDTLS_PK_ECDSA ;
 scalar_t__ MBEDTLS_PK_ECKEY ;
 scalar_t__ MBEDTLS_PK_ECKEY_DH ;

__attribute__((used)) static int eckey_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_ECKEY ||
            type == MBEDTLS_PK_ECKEY_DH ||
            type == MBEDTLS_PK_ECDSA );
}
