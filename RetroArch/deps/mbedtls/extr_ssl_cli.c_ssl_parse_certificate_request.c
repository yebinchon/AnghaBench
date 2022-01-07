
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ in_msgtype; int client_auth; scalar_t__* in_msg; int keep_current_message; int in_hslen; scalar_t__ minor_ver; int state; TYPE_1__* transform_negotiate; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
typedef int mbedtls_ssl_ciphersuite_t ;
struct TYPE_7__ {int * ciphersuite_info; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_REQUEST ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HS_CERTIFICATE_REQUEST ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_ssl_ciphersuite_cert_req_allowed (int const*) ;
 int mbedtls_ssl_hs_hdr_len (TYPE_2__*) ;
 int mbedtls_ssl_read_record (TYPE_2__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int ssl_parse_certificate_request( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned char *buf;
    size_t n = 0;
    size_t cert_type_len = 0, dn_len = 0;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse certificate request" ) );

    if( ! mbedtls_ssl_ciphersuite_cert_req_allowed( ciphersuite_info ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= skip parse certificate request" ) );
        ssl->state++;
        return( 0 );
    }

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate request message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    ssl->state++;
    ssl->client_auth = ( ssl->in_msg[0] == MBEDTLS_SSL_HS_CERTIFICATE_REQUEST );

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "got %s certificate request",
                        ssl->client_auth ? "a" : "no" ) );

    if( ssl->client_auth == 0 )
    {

        ssl->keep_current_message = 1;
        goto exit;
    }
    buf = ssl->in_msg;


    cert_type_len = buf[mbedtls_ssl_hs_hdr_len( ssl )];
    n = cert_type_len;

    if( ssl->in_hslen < mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate request message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_REQUEST );
    }
    dn_len = ( ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 1 + n] << 8 )
             | ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n] ) );

    n += dn_len;
    if( ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + 3 + n )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate request message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_REQUEST );
    }

exit:
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse certificate request" ) );

    return( 0 );
}
