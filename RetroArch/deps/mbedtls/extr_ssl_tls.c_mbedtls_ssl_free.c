
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* cli_id; struct TYPE_10__* hostname; struct TYPE_10__* session; struct TYPE_10__* session_negotiate; struct TYPE_10__* transform_negotiate; struct TYPE_10__* handshake; struct TYPE_10__* transform; struct TYPE_10__* compress_buf; struct TYPE_10__* in_buf; struct TYPE_10__* out_buf; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_SSL_BUFFER_LEN ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int mbedtls_free (TYPE_1__*) ;
 int mbedtls_ssl_handshake_free (TYPE_1__*) ;
 int mbedtls_ssl_hw_record_finish (TYPE_1__*) ;
 int mbedtls_ssl_session_free (TYPE_1__*) ;
 int mbedtls_ssl_transform_free (TYPE_1__*) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;
 int strlen (TYPE_1__*) ;

void mbedtls_ssl_free( mbedtls_ssl_context *ssl )
{
    if( ssl == ((void*)0) )
        return;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> free" ) );

    if( ssl->out_buf != ((void*)0) )
    {
        mbedtls_zeroize( ssl->out_buf, MBEDTLS_SSL_BUFFER_LEN );
        mbedtls_free( ssl->out_buf );
    }

    if( ssl->in_buf != ((void*)0) )
    {
        mbedtls_zeroize( ssl->in_buf, MBEDTLS_SSL_BUFFER_LEN );
        mbedtls_free( ssl->in_buf );
    }
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        mbedtls_free( ssl->transform );
    }

    if( ssl->handshake )
    {
        mbedtls_ssl_handshake_free( ssl->handshake );
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
        mbedtls_ssl_session_free( ssl->session_negotiate );

        mbedtls_free( ssl->handshake );
        mbedtls_free( ssl->transform_negotiate );
        mbedtls_free( ssl->session_negotiate );
    }

    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        mbedtls_free( ssl->session );
    }
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= free" ) );


    mbedtls_zeroize( ssl, sizeof( mbedtls_ssl_context ) );
}
