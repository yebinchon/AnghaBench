#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ in_msgtype; scalar_t__ minor_ver; scalar_t__* in_msg; scalar_t__ in_hslen; unsigned int verify_data_len; TYPE_2__* conf; int /*<<< orphan*/  state; TYPE_1__* handshake; int /*<<< orphan*/  peer_verify_data; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_11__ {int endpoint; scalar_t__ transport; } ;
struct TYPE_10__ {scalar_t__ resume; int /*<<< orphan*/  (* calc_finished ) (TYPE_3__*,unsigned char*,int) ;} ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_HS_FINISHED ; 
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  MBEDTLS_SSL_HANDSHAKE_WRAPUP ; 
 scalar_t__ MBEDTLS_SSL_HS_FINISHED ; 
 int MBEDTLS_SSL_IS_CLIENT ; 
 int MBEDTLS_SSL_IS_SERVER ; 
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ; 
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ; 
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ; 
 int SSL_MAX_HASH_LEN ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (scalar_t__*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,unsigned char*,int) ; 

int FUNC9( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned int hash_len;
    unsigned char buf[SSL_MAX_HASH_LEN];

    FUNC0( 2, ( "=> parse finished" ) );

    ssl->handshake->calc_finished( ssl, buf, ssl->conf->endpoint ^ 1 );

    if( ( ret = FUNC3( ssl ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        FUNC0( 1, ( "bad finished message" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    /* There is currently no ciphersuite using another length with TLS 1.2 */
#if defined(MBEDTLS_SSL_PROTO_SSL3)
    if( ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_0 )
        hash_len = 36;
    else
#endif
        hash_len = 12;

    if( ssl->in_msg[0] != MBEDTLS_SSL_HS_FINISHED ||
        ssl->in_hslen  != FUNC2( ssl ) + hash_len )
    {
        FUNC0( 1, ( "bad finished message" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_FINISHED );
    }

    if( FUNC5( ssl->in_msg + FUNC2( ssl ),
                      buf, hash_len ) != 0 )
    {
        FUNC0( 1, ( "bad finished message" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_FINISHED );
    }

#if defined(MBEDTLS_SSL_RENEGOTIATION)
    ssl->verify_data_len = hash_len;
    memcpy( ssl->peer_verify_data, buf, hash_len );
#endif

    if( ssl->handshake->resume != 0 )
    {
#if defined(MBEDTLS_SSL_CLI_C)
        if( ssl->conf->endpoint == MBEDTLS_SSL_IS_CLIENT )
            ssl->state = MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC;
#endif
#if defined(MBEDTLS_SSL_SRV_C)
        if( ssl->conf->endpoint == MBEDTLS_SSL_IS_SERVER )
            ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
#endif
    }
    else
        ssl->state++;

#if defined(MBEDTLS_SSL_PROTO_DTLS)
    if( ssl->conf->transport == MBEDTLS_SSL_TRANSPORT_DATAGRAM )
        mbedtls_ssl_recv_flight_completed( ssl );
#endif

    FUNC0( 2, ( "<= parse finished" ) );

    return( 0 );
}