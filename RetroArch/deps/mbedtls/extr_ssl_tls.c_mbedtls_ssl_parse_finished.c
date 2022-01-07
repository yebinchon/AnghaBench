
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ in_msgtype; scalar_t__ minor_ver; scalar_t__* in_msg; scalar_t__ in_hslen; unsigned int verify_data_len; TYPE_2__* conf; int state; TYPE_1__* handshake; int peer_verify_data; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_11__ {int endpoint; scalar_t__ transport; } ;
struct TYPE_10__ {scalar_t__ resume; int (* calc_finished ) (TYPE_3__*,unsigned char*,int) ;} ;


 int MBEDTLS_ERR_SSL_BAD_HS_FINISHED ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HANDSHAKE_WRAPUP ;
 scalar_t__ MBEDTLS_SSL_HS_FINISHED ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int SSL_MAX_HASH_LEN ;
 int mbedtls_ssl_hs_hdr_len (TYPE_3__*) ;
 int mbedtls_ssl_read_record (TYPE_3__*) ;
 int mbedtls_ssl_recv_flight_completed (TYPE_3__*) ;
 scalar_t__ mbedtls_ssl_safer_memcmp (scalar_t__*,unsigned char*,unsigned int) ;
 int mbedtls_ssl_send_alert_message (TYPE_3__*,int ,int ) ;
 int memcpy (int ,unsigned char*,unsigned int) ;
 int stub1 (TYPE_3__*,unsigned char*,int) ;

int mbedtls_ssl_parse_finished( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned int hash_len;
    unsigned char buf[SSL_MAX_HASH_LEN];

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse finished" ) );

    ssl->handshake->calc_finished( ssl, buf, ssl->conf->endpoint ^ 1 );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad finished message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }







        hash_len = 12;

    if( ssl->in_msg[0] != MBEDTLS_SSL_HS_FINISHED ||
        ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + hash_len )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad finished message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_FINISHED );
    }

    if( mbedtls_ssl_safer_memcmp( ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl ),
                      buf, hash_len ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad finished message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_FINISHED );
    }






    if( ssl->handshake->resume != 0 )
    {
    }
    else
        ssl->state++;






    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse finished" ) );

    return( 0 );
}
