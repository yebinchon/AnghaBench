#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char uint32_t ;
struct TYPE_10__ {scalar_t__ in_msgtype; scalar_t__* in_msg; scalar_t__ in_hslen; TYPE_2__* session_negotiate; int /*<<< orphan*/  state; TYPE_1__* handshake; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_9__ {unsigned char* ticket; size_t ticket_len; unsigned char ticket_lifetime; scalar_t__ id_len; } ;
struct TYPE_8__ {scalar_t__ new_session_ticket; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_ALLOC_FAILED ; 
 int MBEDTLS_ERR_SSL_BAD_HS_NEW_SESSION_TICKET ; 
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ MBEDTLS_SSL_HS_NEW_SESSION_TICKET ; 
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC ; 
 unsigned char* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC9( mbedtls_ssl_context *ssl )
{
    int ret;
    uint32_t lifetime;
    size_t ticket_len;
    unsigned char *ticket;
    const unsigned char *msg;

    FUNC0( 2, ( "=> parse new session ticket" ) );

    if( ( ret = FUNC5( ssl ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        FUNC0( 1, ( "bad new session ticket message" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    /*
     * struct {
     *     uint32 ticket_lifetime_hint;
     *     opaque ticket<0..2^16-1>;
     * } NewSessionTicket;
     *
     * 0  .  3   ticket_lifetime_hint
     * 4  .  5   ticket_len (n)
     * 6  .  5+n ticket content
     */
    if( ssl->in_msg[0] != MBEDTLS_SSL_HS_NEW_SESSION_TICKET ||
        ssl->in_hslen < 6 + FUNC4( ssl ) )
    {
        FUNC0( 1, ( "bad new session ticket message" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_NEW_SESSION_TICKET );
    }

    msg = ssl->in_msg + FUNC4( ssl );

    lifetime = ( msg[0] << 24 ) | ( msg[1] << 16 ) |
               ( msg[2] <<  8 ) | ( msg[3]       );

    ticket_len = ( msg[4] << 8 ) | ( msg[5] );

    if( ticket_len + 6 + FUNC4( ssl ) != ssl->in_hslen )
    {
        FUNC0( 1, ( "bad new session ticket message" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_NEW_SESSION_TICKET );
    }

    FUNC0( 3, ( "ticket length: %d", ticket_len ) );

    /* We're not waiting for a NewSessionTicket message any more */
    ssl->handshake->new_session_ticket = 0;
    ssl->state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;

    /*
     * Zero-length ticket means the server changed his mind and doesn't want
     * to send a ticket after all, so just forget it
     */
    if( ticket_len == 0 )
        return( 0 );

    FUNC7( ssl->session_negotiate->ticket,
                      ssl->session_negotiate->ticket_len );
    FUNC3( ssl->session_negotiate->ticket );
    ssl->session_negotiate->ticket = NULL;
    ssl->session_negotiate->ticket_len = 0;

    if( ( ticket = FUNC2( 1, ticket_len ) ) == NULL )
    {
        FUNC0( 1, ( "ticket alloc failed" ) );
        FUNC6( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    FUNC8( ticket, msg + 6, ticket_len );

    ssl->session_negotiate->ticket = ticket;
    ssl->session_negotiate->ticket_len = ticket_len;
    ssl->session_negotiate->ticket_lifetime = lifetime;

    /*
     * RFC 5077 section 3.4:
     * "If the client receives a session ticket from the server, then it
     * discards any Session ID that was sent in the ServerHello."
     */
    FUNC0( 3, ( "ticket in use, discarding session id" ) );
    ssl->session_negotiate->id_len = 0;

    FUNC0( 2, ( "<= parse new session ticket" ) );

    return( 0 );
}