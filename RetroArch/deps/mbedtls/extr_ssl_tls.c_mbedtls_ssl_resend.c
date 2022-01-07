
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; scalar_t__* p; struct TYPE_9__* next; int len; } ;
typedef TYPE_2__ mbedtls_ssl_flight_item ;
struct TYPE_10__ {scalar_t__ out_msgtype; scalar_t__ state; TYPE_1__* handshake; int out_msg; int out_msglen; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ retransmit_state; int retransmit_timeout; TYPE_2__* cur_msg; TYPE_2__* flight; } ;


 int MBEDTLS_SSL_DEBUG_BUF (int,char*,int ,int) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 scalar_t__ MBEDTLS_SSL_HS_FINISHED ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_RETRANS_FINISHED ;
 scalar_t__ MBEDTLS_SSL_RETRANS_SENDING ;
 scalar_t__ MBEDTLS_SSL_RETRANS_WAITING ;
 int mbedtls_ssl_write_record (TYPE_3__*) ;
 int memcpy (int ,scalar_t__*,int ) ;
 int ssl_set_timer (TYPE_3__*,int ) ;
 int ssl_swap_epochs (TYPE_3__*) ;

int mbedtls_ssl_resend( mbedtls_ssl_context *ssl )
{
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> mbedtls_ssl_resend" ) );

    if( ssl->handshake->retransmit_state != MBEDTLS_SSL_RETRANS_SENDING )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "initialise resending" ) );

        ssl->handshake->cur_msg = ssl->handshake->flight;
        ssl_swap_epochs( ssl );

        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_SENDING;
    }

    while( ssl->handshake->cur_msg != ((void*)0) )
    {
        int ret;
        mbedtls_ssl_flight_item *cur = ssl->handshake->cur_msg;




        if( cur->type == MBEDTLS_SSL_MSG_HANDSHAKE &&
            cur->p[0] == MBEDTLS_SSL_HS_FINISHED )
        {
            ssl_swap_epochs( ssl );
        }

        memcpy( ssl->out_msg, cur->p, cur->len );
        ssl->out_msglen = cur->len;
        ssl->out_msgtype = cur->type;

        ssl->handshake->cur_msg = cur->next;

        MBEDTLS_SSL_DEBUG_BUF( 3, "resent handshake message header", ssl->out_msg, 12 );

        if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
        {
            MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_FINISHED;
    else
    {
        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_WAITING;
        ssl_set_timer( ssl, ssl->handshake->retransmit_timeout );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= mbedtls_ssl_resend" ) );

    return( 0 );
}
