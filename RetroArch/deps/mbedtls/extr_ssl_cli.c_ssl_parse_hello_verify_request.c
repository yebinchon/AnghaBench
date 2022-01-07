
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned char* in_msg; int in_msglen; int state; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_10__ {unsigned char verify_cookie_len; int * verify_cookie; } ;
struct TYPE_9__ {int max_major_ver; int max_minor_ver; int transport; } ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_ERR_SSL_BAD_HS_PROTOCOL_VERSION ;
 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_PROTOCOL_VERSION ;
 int MBEDTLS_SSL_CLIENT_HELLO ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char const*,unsigned char) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_MAJOR_VERSION_3 ;
 int MBEDTLS_SSL_MINOR_VERSION_2 ;
 int * mbedtls_calloc (int,unsigned char) ;
 int mbedtls_free (int *) ;
 int mbedtls_ssl_hs_hdr_len (TYPE_3__*) ;
 int mbedtls_ssl_read_version (int*,int*,int ,unsigned char const*) ;
 int mbedtls_ssl_recv_flight_completed (TYPE_3__*) ;
 int mbedtls_ssl_reset_checksum (TYPE_3__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_3__*,int ,int ) ;
 int memcpy (int *,unsigned char const*,unsigned char) ;

__attribute__((used)) static int ssl_parse_hello_verify_request( mbedtls_ssl_context *ssl )
{
    const unsigned char *p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    int major_ver, minor_ver;
    unsigned char cookie_len;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse hello verify request" ) );







    MBEDTLS_SSL_DEBUG_BUF( 3, "server version", p, 2 );
    mbedtls_ssl_read_version( &major_ver, &minor_ver, ssl->conf->transport, p );
    p += 2;





    if( major_ver < MBEDTLS_SSL_MAJOR_VERSION_3 ||
        minor_ver < MBEDTLS_SSL_MINOR_VERSION_2 ||
        major_ver > ssl->conf->max_major_ver ||
        minor_ver > ssl->conf->max_minor_ver )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad server version" ) );

        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                     MBEDTLS_SSL_ALERT_MSG_PROTOCOL_VERSION );

        return( MBEDTLS_ERR_SSL_BAD_HS_PROTOCOL_VERSION );
    }

    cookie_len = *p++;
    MBEDTLS_SSL_DEBUG_BUF( 3, "cookie", p, cookie_len );

    if( ( ssl->in_msg + ssl->in_msglen ) - p < cookie_len )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1,
            ( "cookie length does not match incoming message size" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                    MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO );
    }

    mbedtls_free( ssl->handshake->verify_cookie );

    ssl->handshake->verify_cookie = mbedtls_calloc( 1, cookie_len );
    if( ssl->handshake->verify_cookie == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "alloc failed (%d bytes)", cookie_len ) );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    memcpy( ssl->handshake->verify_cookie, p, cookie_len );
    ssl->handshake->verify_cookie_len = cookie_len;


    ssl->state = MBEDTLS_SSL_CLIENT_HELLO;
    mbedtls_ssl_reset_checksum( ssl );

    mbedtls_ssl_recv_flight_completed( ssl );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse hello verify request" ) );

    return( 0 );
}
