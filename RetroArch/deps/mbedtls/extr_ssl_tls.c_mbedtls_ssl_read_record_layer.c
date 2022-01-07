
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ in_hslen; scalar_t__ in_msglen; scalar_t__* in_msg; scalar_t__ state; scalar_t__ badmac_seen; scalar_t__ in_msgtype; int * handshake; TYPE_1__* conf; scalar_t__ in_left; void* next_record_offset; int * in_offt; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_11__ {scalar_t__ transport; scalar_t__ badmac_limit; } ;


 int MBEDTLS_ERR_SSL_CLIENT_RECONNECT ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_INVALID_MAC ;
 int MBEDTLS_ERR_SSL_INVALID_RECORD ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_RECORD ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_BAD_RECORD_MAC ;
 scalar_t__ MBEDTLS_SSL_CLIENT_FINISHED ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,scalar_t__*,scalar_t__) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 scalar_t__ MBEDTLS_SSL_HS_FINISHED ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_SERVER_FINISHED ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_fetch_input (TYPE_2__*,void*) ;
 void* mbedtls_ssl_hdr_len (TYPE_2__*) ;
 int mbedtls_ssl_resend (TYPE_2__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_2__*,int ,int ) ;
 int memmove (scalar_t__*,scalar_t__*,scalar_t__) ;
 int ssl_handshake_wrapup_free_hs_transform (TYPE_2__*) ;
 int ssl_parse_record_header (TYPE_2__*) ;
 int ssl_prepare_record_content (TYPE_2__*) ;

int mbedtls_ssl_read_record_layer( mbedtls_ssl_context *ssl )
{
    int ret;
    if( ssl->in_hslen != 0 )
    {



        if( ssl->in_offt != ((void*)0) )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
            return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
        }
        if( ssl->in_hslen < ssl->in_msglen )
        {
            ssl->in_msglen -= ssl->in_hslen;
            memmove( ssl->in_msg, ssl->in_msg + ssl->in_hslen,
                     ssl->in_msglen );

            MBEDTLS_SSL_DEBUG_BUF( 4, "remaining content in record",
                                   ssl->in_msg, ssl->in_msglen );
        }
        else
        {
            ssl->in_msglen = 0;
        }

        ssl->in_hslen = 0;
    }

    else if( ssl->in_offt != ((void*)0) )
    {
        return( 0 );
    }

    else
    {
        ssl->in_msglen = 0;
    }
    if( ssl->in_msglen > 0 )
    {

        return( 0 );
    }
    if( ( ret = mbedtls_ssl_fetch_input( ssl, mbedtls_ssl_hdr_len( ssl ) ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_fetch_input", ret );
        return( ret );
    }

    if( ( ret = ssl_parse_record_header( ssl ) ) != 0 )
    {
        return( ret );
    }




    if( ( ret = mbedtls_ssl_fetch_input( ssl,
                                 mbedtls_ssl_hdr_len( ssl ) + ssl->in_msglen ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_fetch_input", ret );
        return( ret );
    }







        ssl->in_left = 0;

    if( ( ret = ssl_prepare_record_content( ssl ) ) != 0 )
    {
        {
            return( ret );
        }
    }
    return( 0 );
}
