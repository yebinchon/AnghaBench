
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {int ecdh_ctx; } ;


 int MBEDTLS_ECDH_OURS ;
 int MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH ;
 int MBEDTLS_PK_ECKEY ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int mbedtls_ecdh_get_params (int *,int ,int ) ;
 int mbedtls_pk_can_do (int *,int ) ;
 int mbedtls_pk_ec (int ) ;
 int * mbedtls_ssl_own_key (TYPE_2__*) ;

__attribute__((used)) static int ssl_srv_get_ecdh_params_from_cert( mbedtls_ssl_context *ssl )
{
    int ret;

    if( ! mbedtls_pk_can_do( mbedtls_ssl_own_key( ssl ), MBEDTLS_PK_ECKEY ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "server key not ECDH capable" ) );
        return( MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH );
    }

    if( ( ret = mbedtls_ecdh_get_params( &ssl->handshake->ecdh_ctx,
                                 mbedtls_pk_ec( *mbedtls_ssl_own_key( ssl ) ),
                                 MBEDTLS_ECDH_OURS ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, ( "mbedtls_ecdh_get_params" ), ret );
        return( ret );
    }

    return( 0 );
}
