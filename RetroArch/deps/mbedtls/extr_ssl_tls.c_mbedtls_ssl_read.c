
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ state; scalar_t__* in_offt; int (* f_get_timer ) (int ) ;size_t in_msglen; scalar_t__ in_msgtype; scalar_t__* in_msg; scalar_t__ in_hslen; scalar_t__ secure_renegotiation; scalar_t__ minor_ver; scalar_t__ renego_status; scalar_t__ renego_records_seen; scalar_t__ keep_current_message; TYPE_2__* conf; int p_timer; TYPE_1__* handshake; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_16__ {scalar_t__ transport; scalar_t__ endpoint; scalar_t__ disable_renegotiation; scalar_t__ allow_legacy_renegotiation; scalar_t__ renego_max_records; int read_timeout; } ;
struct TYPE_15__ {scalar_t__ retransmit_state; } ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_CONN_EOF ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ;
 int MBEDTLS_ERR_SSL_WAITING_SERVER_HELLO_RENEGO ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_LEVEL_WARNING ;
 int MBEDTLS_SSL_ALERT_MSG_NO_RENEGOTIATION ;
 int MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 scalar_t__ MBEDTLS_SSL_HS_CLIENT_HELLO ;
 scalar_t__ MBEDTLS_SSL_HS_HELLO_REQUEST ;
 scalar_t__ MBEDTLS_SSL_IS_CLIENT ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_LEGACY_NO_RENEGOTIATION ;
 scalar_t__ MBEDTLS_SSL_LEGACY_RENEGOTIATION ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_1 ;
 scalar_t__ MBEDTLS_SSL_MSG_ALERT ;
 scalar_t__ MBEDTLS_SSL_MSG_APPLICATION_DATA ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_DISABLED ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_PENDING ;
 scalar_t__ MBEDTLS_SSL_RETRANS_SENDING ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_flush_output (TYPE_3__*) ;
 int mbedtls_ssl_handshake (TYPE_3__*) ;
 scalar_t__ mbedtls_ssl_hs_hdr_len (TYPE_3__*) ;
 int mbedtls_ssl_read_record (TYPE_3__*) ;
 int mbedtls_ssl_resend (TYPE_3__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_3__*,int ,int ) ;
 int memcpy (unsigned char*,scalar_t__*,size_t) ;
 int ssl_check_ctr_renegotiate (TYPE_3__*) ;
 int ssl_resend_hello_request (TYPE_3__*) ;
 int ssl_set_timer (TYPE_3__*,int ) ;
 int ssl_start_renegotiation (TYPE_3__*) ;
 int stub1 (int ) ;

int mbedtls_ssl_read( mbedtls_ssl_context *ssl, unsigned char *buf, size_t len )
{
    int ret;
    size_t n;

    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> read" ) );
    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        ret = mbedtls_ssl_handshake( ssl );
        if( ret != MBEDTLS_ERR_SSL_WAITING_SERVER_HELLO_RENEGO &&
            ret != 0 )
        {
            MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }
    if( ssl->in_offt == ((void*)0) )
    {

        if( ssl->f_get_timer != ((void*)0) &&
            ssl->f_get_timer( ssl->p_timer ) == -1 )
        {
            ssl_set_timer( ssl, ssl->conf->read_timeout );
        }

        if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
        {
            if( ret == MBEDTLS_ERR_SSL_CONN_EOF )
                return( 0 );

            MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
            return( ret );
        }

        if( ssl->in_msglen == 0 &&
            ssl->in_msgtype == MBEDTLS_SSL_MSG_APPLICATION_DATA )
        {



            if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
            {
                if( ret == MBEDTLS_ERR_SSL_CONN_EOF )
                    return( 0 );

                MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
                return( ret );
            }
        }
        if( ssl->in_msgtype == MBEDTLS_SSL_MSG_ALERT )
        {
            MBEDTLS_SSL_DEBUG_MSG( 2, ( "ignoring non-fatal non-closure alert" ) );
            return( MBEDTLS_ERR_SSL_WANT_READ );
        }

        if( ssl->in_msgtype != MBEDTLS_SSL_MSG_APPLICATION_DATA )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad application data message" ) );
            return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
        }

        ssl->in_offt = ssl->in_msg;



        if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
            ssl_set_timer( ssl, 0 );
    }

    n = ( len < ssl->in_msglen )
        ? len : ssl->in_msglen;

    memcpy( buf, ssl->in_offt, n );
    ssl->in_msglen -= n;

    if( ssl->in_msglen == 0 )
    {

        ssl->in_offt = ((void*)0);
        ssl->keep_current_message = 0;
    }
    else
    {

        ssl->in_offt += n;
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= read" ) );

    return( (int) n );
}
