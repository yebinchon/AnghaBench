#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ in_msgtype; int* in_msg; scalar_t__ minor_ver; size_t in_hslen; TYPE_4__* session_negotiate; TYPE_2__* handshake; int /*<<< orphan*/  state; TYPE_1__* transform_negotiate; } ;
typedef  TYPE_5__ mbedtls_ssl_context ;
struct TYPE_19__ {scalar_t__ key_exchange; } ;
typedef  TYPE_6__ mbedtls_ssl_ciphersuite_t ;
typedef  int /*<<< orphan*/  mbedtls_pk_type_t ;
typedef  scalar_t__ mbedtls_md_type_t ;
struct TYPE_17__ {TYPE_3__* peer_cert; } ;
struct TYPE_16__ {int /*<<< orphan*/  pk; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* calc_verify ) (TYPE_5__*,unsigned char*) ;} ;
struct TYPE_14__ {TYPE_6__* ciphersuite_info; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  MBEDTLS_PK_ECDSA ; 
 int /*<<< orphan*/  MBEDTLS_PK_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int MBEDTLS_SSL_HS_CERTIFICATE_VERIFY ; 
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_3 ; 
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,unsigned char*,size_t,int*,size_t) ; 
 int FUNC4 (TYPE_5__*) ; 
 size_t FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,unsigned char*) ; 

__attribute__((used)) static int FUNC12( mbedtls_ssl_context *ssl )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;
    size_t i, sig_len;
    unsigned char hash[48];
    unsigned char *hash_start = hash;
    size_t hashlen;
#if defined(MBEDTLS_SSL_PROTO_TLS1_2)
    mbedtls_pk_type_t pk_alg;
#endif
    mbedtls_md_type_t md_alg;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->transform_negotiate->ciphersuite_info;

    FUNC0( 2, ( "=> parse certificate verify" ) );

    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECJPAKE ||
        ssl->session_negotiate->peer_cert == NULL )
    {
        FUNC0( 2, ( "<= skip parse certificate verify" ) );
        ssl->state++;
        return( 0 );
    }

    /* Read the message without adding it to the checksum */
    do {

        if( ( ret = FUNC8( ssl ) ) != 0 )
        {
            FUNC1( 1, ( "mbedtls_ssl_read_record_layer" ), ret );
            return( ret );
        }

        ret = FUNC4( ssl );

    } while( MBEDTLS_ERR_SSL_NON_FATAL == ret );

    if( 0 != ret )
    {
        FUNC1( 1, ( "mbedtls_ssl_handle_message_type" ), ret );
        return( ret );
    }

    ssl->state++;

    /* Process the message contents */
    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE ||
        ssl->in_msg[0] != MBEDTLS_SSL_HS_CERTIFICATE_VERIFY )
    {
        FUNC0( 1, ( "bad certificate verify message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
    }

    i = FUNC5( ssl );

    /*
     *  struct {
     *     SignatureAndHashAlgorithm algorithm; -- TLS 1.2 only
     *     opaque signature<0..2^16-1>;
     *  } DigitallySigned;
     */
#if defined(MBEDTLS_SSL_PROTO_SSL3) || defined(MBEDTLS_SSL_PROTO_TLS1) || \
    defined(MBEDTLS_SSL_PROTO_TLS1_1)
    if( ssl->minor_ver != MBEDTLS_SSL_MINOR_VERSION_3 )
    {
        md_alg = MBEDTLS_MD_NONE;
        hashlen = 36;

        /* For ECDSA, use SHA-1, not MD-5 + SHA-1 */
        if( mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk,
                        MBEDTLS_PK_ECDSA ) )
        {
            hash_start += 16;
            hashlen -= 16;
            md_alg = MBEDTLS_MD_SHA1;
        }
    }
    else
#endif /* MBEDTLS_SSL_PROTO_SSL3 || MBEDTLS_SSL_PROTO_TLS1 ||
          MBEDTLS_SSL_PROTO_TLS1_1 */
#if defined(MBEDTLS_SSL_PROTO_TLS1_2)
    if( ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_3 )
    {
        if( i + 2 > ssl->in_hslen )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad certificate verify message" ) );
            return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
        }

        /*
         * Hash
         */
        md_alg = mbedtls_ssl_md_alg_from_hash( ssl->in_msg[i] );

        if( md_alg == MBEDTLS_MD_NONE || mbedtls_ssl_set_calc_verify_md( ssl, ssl->in_msg[i] ) )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "peer not adhering to requested sig_alg"
                                " for verify message" ) );
            return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
        }

#if !defined(MBEDTLS_MD_SHA1)
        if( MBEDTLS_MD_SHA1 == md_alg )
            hash_start += 16;
#endif

        /* Info from md_alg will be used instead */
        hashlen = 0;

        i++;

        /*
         * Signature
         */
        if( ( pk_alg = mbedtls_ssl_pk_alg_from_sig( ssl->in_msg[i] ) )
                        == MBEDTLS_PK_NONE )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "peer not adhering to requested sig_alg"
                                " for verify message" ) );
            return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
        }

        /*
         * Check the certificate's key type matches the signature alg
         */
        if( ! mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk, pk_alg ) )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "sig_alg doesn't match cert key" ) );
            return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
        }

        i++;
    }
    else
#endif /* MBEDTLS_SSL_PROTO_TLS1_2 */
    {
        FUNC0( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    if( i + 2 > ssl->in_hslen )
    {
        FUNC0( 1, ( "bad certificate verify message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
    }

    sig_len = ( ssl->in_msg[i] << 8 ) | ssl->in_msg[i+1];
    i += 2;

    if( i + sig_len != ssl->in_hslen )
    {
        FUNC0( 1, ( "bad certificate verify message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY );
    }

    /* Calculate hash and verify signature */
    ssl->handshake->calc_verify( ssl, hash );

    if( ( ret = FUNC3( &ssl->session_negotiate->peer_cert->pk,
                           md_alg, hash_start, hashlen,
                           ssl->in_msg + i, sig_len ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_pk_verify", ret );
        return( ret );
    }

    FUNC10( ssl );

    FUNC0( 2, ( "<= parse certificate verify" ) );

    return( ret );
}