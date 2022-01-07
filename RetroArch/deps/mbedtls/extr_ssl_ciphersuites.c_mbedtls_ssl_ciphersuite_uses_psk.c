
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_exchange; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;







int mbedtls_ssl_ciphersuite_uses_psk( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case 129:
        case 128:
        case 131:
        case 130:
            return( 1 );

        default:
            return( 0 );
    }
}
