
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int retransmit_state; int alt_transform_out; } ;
typedef TYPE_2__ mbedtls_ssl_transform ;
typedef TYPE_2__ mbedtls_ssl_session ;
typedef TYPE_2__ mbedtls_ssl_handshake_params ;
struct TYPE_17__ {TYPE_2__* handshake; TYPE_1__* conf; int transform_out; TYPE_2__* transform_negotiate; TYPE_2__* session_negotiate; } ;
typedef TYPE_5__ mbedtls_ssl_context ;
struct TYPE_15__ {scalar_t__ transport; scalar_t__ endpoint; } ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_RETRANS_PREPARING ;
 int MBEDTLS_SSL_RETRANS_WAITING ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 scalar_t__ mbedtls_calloc (int,int) ;
 int mbedtls_free (TYPE_2__*) ;
 int mbedtls_ssl_handshake_free (TYPE_2__*) ;
 int mbedtls_ssl_session_free (TYPE_2__*) ;
 int mbedtls_ssl_session_init (TYPE_2__*) ;
 int mbedtls_ssl_transform_free (TYPE_2__*) ;
 int ssl_handshake_params_init (TYPE_2__*) ;
 int ssl_set_timer (TYPE_5__*,int ) ;
 int ssl_transform_init (TYPE_2__*) ;

__attribute__((used)) static int ssl_handshake_init( mbedtls_ssl_context *ssl )
{

    if( ssl->transform_negotiate )
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
    if( ssl->session_negotiate )
        mbedtls_ssl_session_free( ssl->session_negotiate );
    if( ssl->handshake )
        mbedtls_ssl_handshake_free( ssl->handshake );





    if( ssl->transform_negotiate == ((void*)0) )
    {
        ssl->transform_negotiate = (mbedtls_ssl_transform*)mbedtls_calloc( 1, sizeof(mbedtls_ssl_transform) );
    }

    if( ssl->session_negotiate == ((void*)0) )
    {
        ssl->session_negotiate = (mbedtls_ssl_session*)mbedtls_calloc( 1, sizeof(mbedtls_ssl_session) );
    }

    if( ssl->handshake == ((void*)0) )
    {
        ssl->handshake = (mbedtls_ssl_handshake_params*)mbedtls_calloc( 1, sizeof(mbedtls_ssl_handshake_params) );
    }


    if( ssl->handshake == ((void*)0) ||
        ssl->transform_negotiate == ((void*)0) ||
        ssl->session_negotiate == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "alloc() of ssl sub-contexts failed" ) );

        mbedtls_free( ssl->handshake );
        mbedtls_free( ssl->transform_negotiate );
        mbedtls_free( ssl->session_negotiate );

        ssl->handshake = ((void*)0);
        ssl->transform_negotiate = ((void*)0);
        ssl->session_negotiate = ((void*)0);

        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }


    mbedtls_ssl_session_init( ssl->session_negotiate );
    ssl_transform_init( ssl->transform_negotiate );
    ssl_handshake_params_init( ssl->handshake );
    return( 0 );
}
