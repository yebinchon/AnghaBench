
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbedtls_pk_type_t ;


 scalar_t__ MBEDTLS_PK_RSA ;
 scalar_t__ MBEDTLS_PK_RSASSA_PSS ;

__attribute__((used)) static int rsa_can_do( mbedtls_pk_type_t type )
{
    return( type == MBEDTLS_PK_RSA ||
            type == MBEDTLS_PK_RSASSA_PSS );
}
