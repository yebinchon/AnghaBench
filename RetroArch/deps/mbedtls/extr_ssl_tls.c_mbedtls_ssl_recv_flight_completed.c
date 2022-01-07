
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ in_msgtype; scalar_t__* in_msg; TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {int retransmit_state; int in_msg_seq; int in_flight_start_seq; int * cur_msg; int * flight; } ;


 scalar_t__ MBEDTLS_SSL_HS_FINISHED ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 int MBEDTLS_SSL_RETRANS_FINISHED ;
 int MBEDTLS_SSL_RETRANS_PREPARING ;
 int ssl_flight_free (int *) ;
 int ssl_set_timer (TYPE_2__*,int ) ;

void mbedtls_ssl_recv_flight_completed( mbedtls_ssl_context *ssl )
{

    ssl_flight_free( ssl->handshake->flight );
    ssl->handshake->flight = ((void*)0);
    ssl->handshake->cur_msg = ((void*)0);


    ssl->handshake->in_flight_start_seq = ssl->handshake->in_msg_seq;


    ssl_set_timer( ssl, 0 );

    if( ssl->in_msgtype == MBEDTLS_SSL_MSG_HANDSHAKE &&
        ssl->in_msg[0] == MBEDTLS_SSL_HS_FINISHED )
    {
        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_FINISHED;
    }
    else
        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_PREPARING;
}
