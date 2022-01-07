
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_exchange; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;
typedef int mbedtls_pk_type_t ;






 int MBEDTLS_PK_ECDSA ;
 int MBEDTLS_PK_NONE ;
 int MBEDTLS_PK_RSA ;

mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_alg( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case 128:
        case 131:
        case 129:
            return( MBEDTLS_PK_RSA );

        case 130:
            return( MBEDTLS_PK_ECDSA );

        default:
            return( MBEDTLS_PK_NONE );
    }
}
