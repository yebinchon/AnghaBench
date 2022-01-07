
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_18__ ;
typedef struct TYPE_20__ TYPE_17__ ;


struct TYPE_26__ {unsigned char* out_msg; scalar_t__ minor_ver; int out_msglen; int state; int out_msgtype; TYPE_3__* conf; TYPE_2__* handshake; TYPE_1__* transform_negotiate; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
struct TYPE_27__ {scalar_t__ key_exchange; } ;
typedef TYPE_5__ mbedtls_ssl_ciphersuite_t ;
typedef int mbedtls_sha1_context ;
typedef scalar_t__ mbedtls_pk_type_t ;
typedef scalar_t__ mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;
typedef int mbedtls_md_context_t ;
typedef int mbedtls_md5_context ;
typedef scalar_t__ mbedtls_ecp_group_id ;
struct TYPE_28__ {scalar_t__ const grp_id; int name; } ;
typedef TYPE_6__ mbedtls_ecp_curve_info ;
struct TYPE_20__ {int * p; } ;
struct TYPE_25__ {scalar_t__* curve_list; int p_rng; int f_rng; TYPE_17__ dhm_G; TYPE_17__ dhm_P; } ;
struct TYPE_21__ {int Q; int grp; } ;
struct TYPE_22__ {int GX; int G; int P; int X; } ;
struct TYPE_24__ {unsigned char* randbytes; int hash_algs; TYPE_18__ ecdh_ctx; TYPE_6__** curves; TYPE_19__ dhm_ctx; int ecjpake_ctx; } ;
struct TYPE_23__ {TYPE_5__* ciphersuite_info; } ;


 scalar_t__ const MBEDTLS_ECP_DP_NONE ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_NO_CIPHER_CHOSEN ;
 int MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_DHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_MD_NONE ;
 scalar_t__ MBEDTLS_MD_SHA1 ;
 scalar_t__ MBEDTLS_PK_NONE ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,size_t) ;
 int MBEDTLS_SSL_DEBUG_ECP (int,char*,int *) ;
 int MBEDTLS_SSL_DEBUG_MPI (int,char*,int *) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 unsigned char MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE ;
 int MBEDTLS_SSL_MAX_CONTENT_LEN ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_dhm_make_params (TYPE_19__*,int,unsigned char*,size_t*,int ,int ) ;
 int mbedtls_ecdh_make_params (TYPE_18__*,size_t*,unsigned char*,int,int ,int ) ;
 int mbedtls_ecjpake_write_round_two (int *,unsigned char*,int,size_t*,int ,int ) ;
 int mbedtls_ecp_group_load (int *,scalar_t__ const) ;
 int mbedtls_md5_finish (int *,unsigned char*) ;
 int mbedtls_md5_free (int *) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_md5_starts (int *) ;
 int mbedtls_md5_update (int *,unsigned char*,size_t) ;
 int mbedtls_md_finish (int *,unsigned char*) ;
 int mbedtls_md_free (int *) ;
 scalar_t__ mbedtls_md_get_size (int *) ;
 int * mbedtls_md_info_from_type (scalar_t__) ;
 int mbedtls_md_init (int *) ;
 int mbedtls_md_setup (int *,int const*,int ) ;
 int mbedtls_md_starts (int *) ;
 int mbedtls_md_update (int *,unsigned char*,size_t) ;
 int mbedtls_mpi_copy (int *,TYPE_17__*) ;
 scalar_t__ mbedtls_mpi_size (int *) ;
 int mbedtls_pk_sign (int *,scalar_t__,unsigned char*,unsigned int,unsigned char*,size_t*,int ,int ) ;
 int mbedtls_sha1_finish (int *,unsigned char*) ;
 int mbedtls_sha1_free (int *) ;
 int mbedtls_sha1_init (int *) ;
 int mbedtls_sha1_starts (int *) ;
 int mbedtls_sha1_update (int *,unsigned char*,size_t) ;
 scalar_t__ mbedtls_ssl_ciphersuite_no_pfs (TYPE_5__ const*) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_dhe (TYPE_5__ const*) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_ecdh (TYPE_5__ const*) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_ecdhe (TYPE_5__ const*) ;
 scalar_t__ mbedtls_ssl_ciphersuite_uses_server_signature (TYPE_5__ const*) ;
 scalar_t__ mbedtls_ssl_get_ciphersuite_sig_pk_alg (TYPE_5__ const*) ;
 int mbedtls_ssl_hash_from_md_alg (scalar_t__) ;
 int * mbedtls_ssl_own_key (TYPE_4__*) ;
 int mbedtls_ssl_sig_from_pk_alg (scalar_t__) ;
 scalar_t__ mbedtls_ssl_sig_hash_set_find (int *,scalar_t__) ;
 int mbedtls_ssl_write_record (TYPE_4__*) ;
 int ssl_srv_get_ecdh_params_from_cert (TYPE_4__*) ;

__attribute__((used)) static int ssl_write_server_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret;
    size_t n = 0;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
                            ssl->transform_negotiate->ciphersuite_info;
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write server key exchange" ) );
    ssl->out_msglen = 4 + n;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE;

    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write server key exchange" ) );

    return( 0 );
}
