
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_exchange; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;
typedef int mbedtls_pk_type_t ;
 int MBEDTLS_PK_ECDSA ;
 int MBEDTLS_PK_ECKEY ;
 int MBEDTLS_PK_NONE ;
 int MBEDTLS_PK_RSA ;

mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_pk_alg( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case 129:
        case 134:
        case 132:
        case 128:
            return( MBEDTLS_PK_RSA );

        case 133:
            return( MBEDTLS_PK_ECDSA );

        case 130:
        case 131:
            return( MBEDTLS_PK_ECKEY );

        default:
            return( MBEDTLS_PK_NONE );
    }
}
