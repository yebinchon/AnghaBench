
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ state; scalar_t__ renego_status; scalar_t__ out_left; TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ endpoint; } ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_PENDING ;
 int mbedtls_ssl_flush_output (TYPE_2__*) ;
 int mbedtls_ssl_handshake (TYPE_2__*) ;
 int ssl_start_renegotiation (TYPE_2__*) ;
 int ssl_write_hello_request (TYPE_2__*) ;

int mbedtls_ssl_renegotiate( mbedtls_ssl_context *ssl )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;

    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    return( ret );
}
