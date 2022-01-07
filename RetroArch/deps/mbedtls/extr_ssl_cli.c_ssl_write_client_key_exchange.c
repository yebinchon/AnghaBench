
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_20__ {unsigned char* out_msg; size_t out_msglen; int state; int out_msgtype; TYPE_2__* conf; TYPE_3__* handshake; TYPE_1__* transform_negotiate; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
struct TYPE_21__ {scalar_t__ key_exchange; } ;
typedef TYPE_5__ mbedtls_ssl_ciphersuite_t ;
struct TYPE_15__ {int Q; int z; } ;
struct TYPE_16__ {size_t len; int P; int K; int GX; int X; } ;
struct TYPE_19__ {int pmslen; int premaster; int ecjpake_ctx; TYPE_11__ ecdh_ctx; TYPE_13__ dhm_ctx; } ;
struct TYPE_18__ {size_t psk_identity_len; int p_rng; int f_rng; int * psk_identity; int * psk; } ;
struct TYPE_17__ {TYPE_5__* ciphersuite_info; } ;


 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED ;
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
 unsigned char MBEDTLS_SSL_HS_CLIENT_KEY_EXCHANGE ;
 size_t MBEDTLS_SSL_MAX_CONTENT_LEN ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_dhm_calc_secret (TYPE_13__*,int ,int ,int *,int ,int ) ;
 int mbedtls_dhm_make_public (TYPE_13__*,int,unsigned char*,size_t,int ,int ) ;
 int mbedtls_ecdh_calc_secret (TYPE_11__*,int *,int ,int ,int ,int ) ;
 int mbedtls_ecdh_make_public (TYPE_11__*,size_t*,unsigned char*,size_t,int ,int ) ;
 int mbedtls_ecjpake_derive_secret (int *,int ,int,int *,int ,int ) ;
 int mbedtls_ecjpake_write_round_two (int *,unsigned char*,size_t,size_t*,int ,int ) ;
 scalar_t__ mbedtls_mpi_size (int *) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_psk (TYPE_5__ const*) ;
 int mbedtls_ssl_psk_derive_premaster (TYPE_4__*,scalar_t__) ;
 int mbedtls_ssl_write_record (TYPE_4__*) ;
 int memcpy (unsigned char*,int *,size_t) ;
 int ssl_write_encrypted_pms (TYPE_4__*,size_t,size_t*,int) ;

__attribute__((used)) static int ssl_write_client_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t i, n;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write client key exchange" ) );
    {
        ((void) ciphersuite_info);
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    ssl->out_msglen = i + n;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_CLIENT_KEY_EXCHANGE;

    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write client key exchange" ) );

    return( 0 );
}
