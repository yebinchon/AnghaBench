#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void mbedtls_ssl_key_cert ;
typedef  void mbedtls_ssl_handshake_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10( mbedtls_ssl_handshake_params *handshake )
{
    if( handshake == NULL )
        return;

#if defined(MBEDTLS_SSL_PROTO_SSL3) || defined(MBEDTLS_SSL_PROTO_TLS1) || \
    defined(MBEDTLS_SSL_PROTO_TLS1_1)
    mbedtls_md5_free(    &handshake->fin_md5  );
    mbedtls_sha1_free(   &handshake->fin_sha1 );
#endif
#if defined(MBEDTLS_SSL_PROTO_TLS1_2)
#if defined(MBEDTLS_SHA256_C)
    mbedtls_sha256_free(   &handshake->fin_sha256    );
#endif
#if defined(MBEDTLS_SHA512_C)
    mbedtls_sha512_free(   &handshake->fin_sha512    );
#endif
#endif /* MBEDTLS_SSL_PROTO_TLS1_2 */

#if defined(MBEDTLS_DHM_C)
    mbedtls_dhm_free( &handshake->dhm_ctx );
#endif
#if defined(MBEDTLS_ECDH_C)
    mbedtls_ecdh_free( &handshake->ecdh_ctx );
#endif
#if defined(MBEDTLS_KEY_EXCHANGE_ECJPAKE_ENABLED)
    mbedtls_ecjpake_free( &handshake->ecjpake_ctx );
#if defined(MBEDTLS_SSL_CLI_C)
    mbedtls_free( handshake->ecjpake_cache );
    handshake->ecjpake_cache = NULL;
    handshake->ecjpake_cache_len = 0;
#endif
#endif

#if defined(MBEDTLS_ECDH_C) || defined(MBEDTLS_ECDSA_C) || \
    defined(MBEDTLS_KEY_EXCHANGE_ECJPAKE_ENABLED)
    /* explicit void pointer cast for buggy MS compiler */
    mbedtls_free( (void *) handshake->curves );
#endif

#if defined(MBEDTLS_KEY_EXCHANGE__SOME__PSK_ENABLED)
    if( handshake->psk != NULL )
    {
        mbedtls_zeroize( handshake->psk, handshake->psk_len );
        mbedtls_free( handshake->psk );
    }
#endif

#if defined(MBEDTLS_X509_CRT_PARSE_C) && \
    defined(MBEDTLS_SSL_SERVER_NAME_INDICATION)
    /*
     * Free only the linked list wrapper, not the keys themselves
     * since the belong to the SNI callback
     */
    if( handshake->sni_key_cert != NULL )
    {
        mbedtls_ssl_key_cert *cur = handshake->sni_key_cert, *next;

        while( cur != NULL )
        {
            next = cur->next;
            mbedtls_free( cur );
            cur = next;
        }
    }
#endif /* MBEDTLS_X509_CRT_PARSE_C && MBEDTLS_SSL_SERVER_NAME_INDICATION */

#if defined(MBEDTLS_SSL_PROTO_DTLS)
    mbedtls_free( handshake->verify_cookie );
    mbedtls_free( handshake->hs_msg );
    ssl_flight_free( handshake->flight );
#endif

    FUNC8( handshake, sizeof( mbedtls_ssl_handshake_params ) );
}