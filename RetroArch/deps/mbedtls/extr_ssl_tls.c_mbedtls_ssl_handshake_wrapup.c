
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ renego_status; int state; TYPE_2__* handshake; TYPE_1__* conf; TYPE_4__* session; TYPE_4__* session_negotiate; scalar_t__ renego_records_seen; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_13__ {scalar_t__ id_len; int encrypt_then_mac; } ;
struct TYPE_11__ {int resume; int * flight; } ;
struct TYPE_10__ {scalar_t__ (* f_set_cache ) (int ,TYPE_4__*) ;scalar_t__ transport; int p_cache; } ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_DONE ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_free (TYPE_4__*) ;
 int mbedtls_ssl_session_free (TYPE_4__*) ;
 int ssl_handshake_wrapup_free_hs_transform (TYPE_3__*) ;
 int ssl_set_timer (TYPE_3__*,int ) ;
 scalar_t__ stub1 (int ,TYPE_4__*) ;

void mbedtls_ssl_handshake_wrapup( mbedtls_ssl_context *ssl )
{
    int resume = ssl->handshake->resume;

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "=> handshake wrapup" ) );
    if( ssl->session )
    {






        mbedtls_ssl_session_free( ssl->session );
        mbedtls_free( ssl->session );
    }
    ssl->session = ssl->session_negotiate;
    ssl->session_negotiate = ((void*)0);




    if( ssl->conf->f_set_cache != ((void*)0) &&
        ssl->session->id_len != 0 &&
        resume == 0 )
    {
        if( ssl->conf->f_set_cache( ssl->conf->p_cache, ssl->session ) != 0 )
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "cache did not store session" ) );
    }
        ssl_handshake_wrapup_free_hs_transform( ssl );

    ssl->state++;

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "<= handshake wrapup" ) );
}
