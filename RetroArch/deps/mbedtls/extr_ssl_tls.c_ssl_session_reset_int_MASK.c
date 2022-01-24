#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ split_done; scalar_t__ cli_id_len; int /*<<< orphan*/ * cli_id; int /*<<< orphan*/ * alpn_chosen; int /*<<< orphan*/ * session; int /*<<< orphan*/ * transform; scalar_t__ in_buf; scalar_t__ out_buf; int /*<<< orphan*/ * transform_out; int /*<<< orphan*/ * transform_in; scalar_t__ out_left; scalar_t__ out_msglen; scalar_t__ out_msgtype; scalar_t__ out_msg; scalar_t__ keep_current_message; scalar_t__ nb_zero; scalar_t__ in_hslen; scalar_t__ in_epoch; scalar_t__ next_record_offset; scalar_t__ in_left; scalar_t__ in_msglen; scalar_t__ in_msgtype; scalar_t__ in_msg; int /*<<< orphan*/ * in_offt; int /*<<< orphan*/  secure_renegotiation; scalar_t__ peer_verify_data; scalar_t__ own_verify_data; scalar_t__ verify_data_len; scalar_t__ renego_records_seen; int /*<<< orphan*/  renego_status; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_HW_ACCEL_FAILED ; 
 int /*<<< orphan*/  MBEDTLS_SSL_BUFFER_LEN ; 
 scalar_t__ MBEDTLS_SSL_CBC_RECORD_SPLITTING_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  MBEDTLS_SSL_HELLO_REQUEST ; 
 int /*<<< orphan*/  MBEDTLS_SSL_INITIAL_HANDSHAKE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_LEGACY_RENEGOTIATION ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_DATA_MAX_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10( mbedtls_ssl_context *ssl, int partial )
{
    int ret;

    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;

    /* Cancel any possibly running timer */
    FUNC9( ssl, 0 );

#if defined(MBEDTLS_SSL_RENEGOTIATION)
    ssl->renego_status = MBEDTLS_SSL_INITIAL_HANDSHAKE;
    ssl->renego_records_seen = 0;

    ssl->verify_data_len = 0;
    memset( ssl->own_verify_data, 0, MBEDTLS_SSL_VERIFY_DATA_MAX_LEN );
    memset( ssl->peer_verify_data, 0, MBEDTLS_SSL_VERIFY_DATA_MAX_LEN );
#endif
    ssl->secure_renegotiation = MBEDTLS_SSL_LEGACY_RENEGOTIATION;

    ssl->in_offt = NULL;

    ssl->in_msg = ssl->in_buf + 13;
    ssl->in_msgtype = 0;
    ssl->in_msglen = 0;
    if( partial == 0 )
        ssl->in_left = 0;
#if defined(MBEDTLS_SSL_PROTO_DTLS)
    ssl->next_record_offset = 0;
    ssl->in_epoch = 0;
#endif
#if defined(MBEDTLS_SSL_DTLS_ANTI_REPLAY)
    ssl_dtls_replay_reset( ssl );
#endif

    ssl->in_hslen = 0;
    ssl->nb_zero = 0;

    ssl->keep_current_message = 0;

    ssl->out_msg = ssl->out_buf + 13;
    ssl->out_msgtype = 0;
    ssl->out_msglen = 0;
    ssl->out_left = 0;
#if defined(MBEDTLS_SSL_CBC_RECORD_SPLITTING)
    if( ssl->split_done != MBEDTLS_SSL_CBC_RECORD_SPLITTING_DISABLED )
        ssl->split_done = 0;
#endif

    ssl->transform_in = NULL;
    ssl->transform_out = NULL;

    FUNC6( ssl->out_buf, 0, MBEDTLS_SSL_BUFFER_LEN );
    if( partial == 0 )
        FUNC6( ssl->in_buf, 0, MBEDTLS_SSL_BUFFER_LEN );

#if defined(MBEDTLS_SSL_HW_RECORD_ACCEL)
    if( mbedtls_ssl_hw_record_reset != NULL )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "going for mbedtls_ssl_hw_record_reset()" ) );
        if( ( ret = mbedtls_ssl_hw_record_reset( ssl ) ) != 0 )
        {
            MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_hw_record_reset", ret );
            return( MBEDTLS_ERR_SSL_HW_ACCEL_FAILED );
        }
    }
#endif

    if( ssl->transform )
    {
        FUNC5( ssl->transform );
        FUNC2( ssl->transform );
        ssl->transform = NULL;
    }

    if( ssl->session )
    {
        FUNC4( ssl->session );
        FUNC2( ssl->session );
        ssl->session = NULL;
    }

#if defined(MBEDTLS_SSL_ALPN)
    ssl->alpn_chosen = NULL;
#endif

#if defined(MBEDTLS_SSL_DTLS_HELLO_VERIFY) && defined(MBEDTLS_SSL_SRV_C)
    if( partial == 0 )
    {
        mbedtls_free( ssl->cli_id );
        ssl->cli_id = NULL;
        ssl->cli_id_len = 0;
    }
#endif

    if( ( ret = FUNC8( ssl ) ) != 0 )
        return( ret );

    return( 0 );
}