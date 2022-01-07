
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ in_msgtype; scalar_t__* in_msg; int keep_current_message; int in_hslen; scalar_t__ minor_ver; int state; TYPE_2__* session_negotiate; TYPE_4__* handshake; TYPE_3__* transform_negotiate; } ;
typedef TYPE_5__ mbedtls_ssl_context ;
struct TYPE_23__ {scalar_t__ key_exchange; } ;
typedef TYPE_6__ mbedtls_ssl_ciphersuite_t ;
typedef int mbedtls_sha1_context ;
typedef scalar_t__ mbedtls_pk_type_t ;
typedef scalar_t__ mbedtls_md_type_t ;
typedef int mbedtls_md_context_t ;
typedef int mbedtls_md5_context ;
struct TYPE_21__ {unsigned char* randbytes; int ecjpake_ctx; } ;
struct TYPE_20__ {TYPE_6__* ciphersuite_info; } ;
struct TYPE_19__ {TYPE_1__* peer_cert; } ;
struct TYPE_18__ {int pk; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_DHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_DHE_RSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_RSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDH_RSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_RSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_RSA_PSK ;
 scalar_t__ MBEDTLS_MD_NONE ;
 scalar_t__ MBEDTLS_MD_SHA1 ;
 scalar_t__ MBEDTLS_PK_ECDSA ;
 scalar_t__ MBEDTLS_PK_NONE ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_DECRYPT_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ;
 int MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER ;
 int MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,size_t) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_ecjpake_read_round_two (int *,unsigned char*,int) ;
 int mbedtls_md5_finish (int *,unsigned char*) ;
 int mbedtls_md5_free (int *) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_md5_starts (int *) ;
 int mbedtls_md5_update (int *,unsigned char*,size_t) ;
 int mbedtls_md_finish (int *,unsigned char*) ;
 int mbedtls_md_free (int *) ;
 scalar_t__ mbedtls_md_get_size (int ) ;
 int mbedtls_md_info_from_type (scalar_t__) ;
 int mbedtls_md_init (int *) ;
 int mbedtls_md_setup (int *,int ,int ) ;
 int mbedtls_md_starts (int *) ;
 int mbedtls_md_update (int *,unsigned char*,size_t) ;
 int mbedtls_pk_can_do (int *,scalar_t__) ;
 int mbedtls_pk_verify (int *,scalar_t__,unsigned char*,size_t,unsigned char*,size_t) ;
 int mbedtls_sha1_finish (int *,unsigned char*) ;
 int mbedtls_sha1_free (int *) ;
 int mbedtls_sha1_init (int *) ;
 int mbedtls_sha1_starts (int *) ;
 int mbedtls_sha1_update (int *,unsigned char*,size_t) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_server_signature (TYPE_6__ const*) ;
 scalar_t__ mbedtls_ssl_get_ciphersuite_sig_pk_alg (TYPE_6__ const*) ;
 int mbedtls_ssl_hs_hdr_len (TYPE_5__*) ;
 int mbedtls_ssl_read_record (TYPE_5__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_5__*,int ,int ) ;
 int ssl_cli_get_ecdh_params_from_cert (TYPE_5__*) ;
 scalar_t__ ssl_parse_server_dh_params (TYPE_5__*,unsigned char**,unsigned char*) ;
 scalar_t__ ssl_parse_server_ecdh_params (TYPE_5__*,unsigned char**,unsigned char*) ;
 scalar_t__ ssl_parse_server_psk_hint (TYPE_5__*,unsigned char**,unsigned char*) ;
 scalar_t__ ssl_parse_signature_algorithm (TYPE_5__*,unsigned char**,unsigned char*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int ssl_parse_server_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;
    unsigned char *p, *end;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse server key exchange" ) );
    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad server key exchange message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }





    if( ssl->in_msg[0] != MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE )
    {
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
            ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        {


            ssl->keep_current_message = 1;
            goto exit;
        }

        MBEDTLS_SSL_DEBUG_MSG( 1, ( "server key exchange message must "
                                    "not be skipped" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE );

        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    end = ssl->in_msg + ssl->in_hslen;
    MBEDTLS_SSL_DEBUG_BUF( 3, "server key exchange", p, end - p );
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }
exit:
    ssl->state++;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse server key exchange" ) );

    return( 0 );
}
