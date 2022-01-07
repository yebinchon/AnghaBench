
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ tlen ;
struct TYPE_8__ {int* out_msg; int out_msglen; TYPE_2__* handshake; int session_negotiate; TYPE_1__* conf; int out_msgtype; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
typedef int lifetime ;
struct TYPE_7__ {scalar_t__ new_session_ticket; } ;
struct TYPE_6__ {int (* f_ticket_write ) (int ,int ,int*,int*,size_t*,int*) ;int p_ticket; } ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HS_NEW_SESSION_TICKET ;
 int MBEDTLS_SSL_MAX_CONTENT_LEN ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_ssl_write_record (TYPE_3__*) ;
 int stub1 (int ,int ,int*,int*,size_t*,int*) ;

__attribute__((used)) static int ssl_write_new_session_ticket( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t tlen;
    uint32_t lifetime;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write new session ticket" ) );

    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_NEW_SESSION_TICKET;
    if( ( ret = ssl->conf->f_ticket_write( ssl->conf->p_ticket,
                                ssl->session_negotiate,
                                ssl->out_msg + 10,
                                ssl->out_msg + MBEDTLS_SSL_MAX_CONTENT_LEN,
                                &tlen, &lifetime ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_ticket_write", ret );
        tlen = 0;
    }

    ssl->out_msg[4] = ( lifetime >> 24 ) & 0xFF;
    ssl->out_msg[5] = ( lifetime >> 16 ) & 0xFF;
    ssl->out_msg[6] = ( lifetime >> 8 ) & 0xFF;
    ssl->out_msg[7] = ( lifetime ) & 0xFF;

    ssl->out_msg[8] = (unsigned char)( ( tlen >> 8 ) & 0xFF );
    ssl->out_msg[9] = (unsigned char)( ( tlen ) & 0xFF );

    ssl->out_msglen = 10 + tlen;





    ssl->handshake->new_session_ticket = 0;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write new session ticket" ) );

    return( 0 );
}
