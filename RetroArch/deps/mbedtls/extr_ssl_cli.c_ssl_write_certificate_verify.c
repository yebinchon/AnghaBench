
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ client_auth; scalar_t__ minor_ver; unsigned char* out_msg; int out_msglen; int state; int out_msgtype; TYPE_3__* conf; TYPE_2__* transform_negotiate; TYPE_1__* handshake; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
struct TYPE_16__ {scalar_t__ key_exchange; scalar_t__ mac; } ;
typedef TYPE_5__ mbedtls_ssl_ciphersuite_t ;
typedef scalar_t__ mbedtls_md_type_t ;
struct TYPE_14__ {int p_rng; int f_rng; } ;
struct TYPE_13__ {TYPE_5__* ciphersuite_info; } ;
struct TYPE_12__ {int (* calc_verify ) (TYPE_4__*,unsigned char*) ;} ;


 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_DHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_ECJPAKE ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_PSK ;
 scalar_t__ MBEDTLS_KEY_EXCHANGE_RSA_PSK ;
 scalar_t__ MBEDTLS_MD_NONE ;
 scalar_t__ MBEDTLS_MD_SHA1 ;
 scalar_t__ MBEDTLS_MD_SHA256 ;
 scalar_t__ MBEDTLS_MD_SHA384 ;
 int MBEDTLS_PK_ECDSA ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 unsigned char MBEDTLS_SSL_HASH_SHA256 ;
 unsigned char MBEDTLS_SSL_HASH_SHA384 ;
 unsigned char MBEDTLS_SSL_HS_CERTIFICATE_VERIFY ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ mbedtls_pk_can_do (int *,int ) ;
 int mbedtls_pk_sign (int *,scalar_t__,unsigned char*,unsigned int,unsigned char*,size_t*,int ,int ) ;
 int mbedtls_ssl_derive_keys (TYPE_4__*) ;
 int * mbedtls_ssl_own_cert (TYPE_4__*) ;
 int * mbedtls_ssl_own_key (TYPE_4__*) ;
 unsigned char mbedtls_ssl_sig_from_pk (int *) ;
 int mbedtls_ssl_write_record (TYPE_4__*) ;
 int stub1 (TYPE_4__*,unsigned char*) ;

__attribute__((used)) static int ssl_write_certificate_verify( mbedtls_ssl_context *ssl )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;
    size_t n = 0, offset = 0;
    unsigned char hash[48];
    unsigned char *hash_start = hash;
    mbedtls_md_type_t md_alg = MBEDTLS_MD_NONE;
    unsigned int hashlen;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write certificate verify" ) );

    if( ( ret = mbedtls_ssl_derive_keys( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_derive_keys", ret );
        return( ret );
    }

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= skip write certificate verify" ) );
        ssl->state++;
        return( 0 );
    }

    if( ssl->client_auth == 0 || mbedtls_ssl_own_cert( ssl ) == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= skip write certificate verify" ) );
        ssl->state++;
        return( 0 );
    }

    if( mbedtls_ssl_own_key( ssl ) == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "got no private key for certificate" ) );
        return( MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED );
    }




    ssl->handshake->calc_verify( ssl, hash );
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    if( ( ret = mbedtls_pk_sign( mbedtls_ssl_own_key( ssl ), md_alg, hash_start, hashlen,
                         ssl->out_msg + 6 + offset, &n,
                         ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_pk_sign", ret );
        return( ret );
    }

    ssl->out_msg[4 + offset] = (unsigned char)( n >> 8 );
    ssl->out_msg[5 + offset] = (unsigned char)( n );

    ssl->out_msglen = 6 + n + offset;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_CERTIFICATE_VERIFY;

    ssl->state++;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write certificate verify" ) );

    return( ret );
}
