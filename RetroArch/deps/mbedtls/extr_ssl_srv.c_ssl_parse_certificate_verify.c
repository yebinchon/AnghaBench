
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ in_msgtype; int* in_msg; scalar_t__ minor_ver; size_t in_hslen; TYPE_4__* session_negotiate; TYPE_2__* handshake; int state; TYPE_1__* transform_negotiate; } ;
typedef TYPE_5__ mbedtls_ssl_context ;
struct TYPE_19__ {scalar_t__ key_exchange; } ;
typedef TYPE_6__ mbedtls_ssl_ciphersuite_t ;
typedef int mbedtls_pk_type_t ;
typedef scalar_t__ mbedtls_md_type_t ;
struct TYPE_17__ {TYPE_3__* peer_cert; } ;
struct TYPE_16__ {int pk; } ;
struct TYPE_15__ {int (* calc_verify ) (TYPE_5__*,unsigned char*) ;} ;
struct TYPE_14__ {TYPE_6__* ciphersuite_info; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY ;
 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_NON_FATAL ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_DHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_RSA_PSK ;
 scalar_t__ MBEDTLS_MD_NONE ;
 scalar_t__ MBEDTLS_MD_SHA1 ;
 int MBEDTLS_PK_ECDSA ;
 int MBEDTLS_PK_NONE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HS_CERTIFICATE_VERIFY ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ mbedtls_pk_can_do (int *,int ) ;
 int mbedtls_pk_verify (int *,scalar_t__,unsigned char*,size_t,int*,size_t) ;
 int mbedtls_ssl_handle_message_type (TYPE_5__*) ;
 size_t mbedtls_ssl_hs_hdr_len (TYPE_5__*) ;
 scalar_t__ mbedtls_ssl_md_alg_from_hash (int) ;
 int mbedtls_ssl_pk_alg_from_sig (int) ;
 int mbedtls_ssl_read_record_layer (TYPE_5__*) ;
 scalar_t__ mbedtls_ssl_set_calc_verify_md (TYPE_5__*,int) ;
 int mbedtls_ssl_update_handshake_status (TYPE_5__*) ;
 int stub1 (TYPE_5__*,unsigned char*) ;

__attribute__((used)) static int ssl_parse_certificate_verify( mbedtls_ssl_context *ssl )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;
    size_t i, sig_len;
    unsigned char hash[48];
    unsigned char *hash_start = hash;
    size_t hashlen;



    mbedtls_md_type_t md_alg;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse certificate verify" ) );

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE ||
        ssl->session_negotiate->peer_cert == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= skip parse certificate verify" ) );
        ssl->state++;
        return( 0 );
    }


    do {

        if( ( ret = mbedtls_ssl_read_record_layer( ssl ) ) != 0 )
        {
            MBEDTLS_SSL_DEBUG_RET( 1, ( "mbedtls_ssl_read_record_layer" ), ret );
            return( ret );
        }

        ret = mbedtls_ssl_handle_message_type( ssl );

    } while( MBEDTLS_ERR_SSL_NON_FATAL == ret );

    if( 0 != ret )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, ( "mbedtls_ssl_handle_message_type" ), ret );
        return( ret );
    }

    ssl->state++;


    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE ||
        ssl->in_msg[0] != MBEDTLS_SSL_HS_CERTIFICATE_VERIFY )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate verify message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
    }

    i = mbedtls_ssl_hs_hdr_len( ssl );
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    if( i + 2 > ssl->in_hslen )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate verify message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
    }

    sig_len = ( ssl->in_msg[i] << 8 ) | ssl->in_msg[i+1];
    i += 2;

    if( i + sig_len != ssl->in_hslen )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate verify message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
    }


    ssl->handshake->calc_verify( ssl, hash );

    if( ( ret = mbedtls_pk_verify( &ssl->session_negotiate->peer_cert->pk,
                           md_alg, hash_start, hashlen,
                           ssl->in_msg + i, sig_len ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_pk_verify", ret );
        return( ret );
    }

    mbedtls_ssl_update_handshake_status( ssl );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse certificate verify" ) );

    return( ret );
}
