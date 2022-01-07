
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_6__ {scalar_t__ endpoint; } ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 scalar_t__ MBEDTLS_SSL_IS_CLIENT ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 int mbedtls_ssl_handshake_client_step (TYPE_2__*) ;
 int mbedtls_ssl_handshake_server_step (TYPE_2__*) ;

int mbedtls_ssl_handshake_step( mbedtls_ssl_context *ssl )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;

    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    return( ret );
}
