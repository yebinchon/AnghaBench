
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct TYPE_22__ {unsigned char* in_msg; int in_hslen; scalar_t__ in_msgtype; int state; TYPE_2__* conf; TYPE_3__* handshake; TYPE_1__* transform_negotiate; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
struct TYPE_23__ {scalar_t__ key_exchange; } ;
typedef TYPE_5__ mbedtls_ssl_ciphersuite_t ;
struct TYPE_17__ {int Qp; int z; } ;
struct TYPE_18__ {int K; } ;
struct TYPE_21__ {int pmslen; int premaster; int ecjpake_ctx; TYPE_14__ ecdh_ctx; TYPE_16__ dhm_ctx; } ;
struct TYPE_20__ {int p_rng; int f_rng; } ;
struct TYPE_19__ {TYPE_5__* ciphersuite_info; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE ;
 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE_CS ;
 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE_RP ;
 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
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
 int MBEDTLS_MPI_MAX_SIZE ;
 int MBEDTLS_PREMASTER_SIZE ;
 int MBEDTLS_SSL_DEBUG_ECP (int,char*,int *) ;
 int MBEDTLS_SSL_DEBUG_MPI (int,char*,int *) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HS_CLIENT_KEY_EXCHANGE ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_dhm_calc_secret (TYPE_16__*,int ,int ,int *,int ,int ) ;
 int mbedtls_ecdh_calc_secret (TYPE_14__*,int *,int ,int ,int ,int ) ;
 int mbedtls_ecdh_read_public (TYPE_14__*,unsigned char*,int) ;
 int mbedtls_ecjpake_derive_secret (int *,int ,int,int *,int ,int ) ;
 int mbedtls_ecjpake_read_round_two (int *,unsigned char*,int) ;
 int mbedtls_ssl_derive_keys (TYPE_4__*) ;
 int mbedtls_ssl_hs_hdr_len (TYPE_4__*) ;
 int mbedtls_ssl_psk_derive_premaster (TYPE_4__*,scalar_t__) ;
 int mbedtls_ssl_read_record (TYPE_4__*) ;
 int ssl_parse_client_dh_public (TYPE_4__*,unsigned char**,unsigned char*) ;
 int ssl_parse_client_psk_identity (TYPE_4__*,unsigned char**,unsigned char*) ;
 int ssl_parse_encrypted_pms (TYPE_4__*,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int ssl_parse_client_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;
    unsigned char *p, *end;

    ciphersuite_info = ssl->transform_negotiate->ciphersuite_info;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse client key exchange" ) );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    end = ssl->in_msg + ssl->in_hslen;

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }

    if( ssl->in_msg[0] != MBEDTLS_SSL_HS_CLIENT_KEY_EXCHANGE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    if( ( ret = mbedtls_ssl_derive_keys( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_derive_keys", ret );
        return( ret );
    }

    ssl->state++;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse client key exchange" ) );

    return( 0 );
}
