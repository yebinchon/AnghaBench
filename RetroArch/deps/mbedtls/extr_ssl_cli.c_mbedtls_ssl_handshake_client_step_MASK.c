#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int state; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_23__ {scalar_t__ retransmit_state; scalar_t__ new_session_ticket; } ;
struct TYPE_22__ {scalar_t__ transport; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
#define  MBEDTLS_SSL_CERTIFICATE_REQUEST 144 
#define  MBEDTLS_SSL_CERTIFICATE_VERIFY 143 
#define  MBEDTLS_SSL_CLIENT_CERTIFICATE 142 
#define  MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC 141 
#define  MBEDTLS_SSL_CLIENT_FINISHED 140 
#define  MBEDTLS_SSL_CLIENT_HELLO 139 
#define  MBEDTLS_SSL_CLIENT_KEY_EXCHANGE 138 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  MBEDTLS_SSL_FLUSH_BUFFERS 137 
 int MBEDTLS_SSL_HANDSHAKE_OVER ; 
#define  MBEDTLS_SSL_HANDSHAKE_WRAPUP 136 
#define  MBEDTLS_SSL_HELLO_REQUEST 135 
 scalar_t__ MBEDTLS_SSL_RETRANS_SENDING ; 
#define  MBEDTLS_SSL_SERVER_CERTIFICATE 134 
#define  MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC 133 
#define  MBEDTLS_SSL_SERVER_FINISHED 132 
#define  MBEDTLS_SSL_SERVER_HELLO 131 
#define  MBEDTLS_SSL_SERVER_HELLO_DONE 130 
#define  MBEDTLS_SSL_SERVER_KEY_EXCHANGE 129 
#define  MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET 128 
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*) ; 
 int FUNC17 (TYPE_3__*) ; 

int FUNC18( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER || ssl->handshake == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    FUNC0( 2, ( "client state: %d", ssl->state ) );

    if( ( ret = FUNC1( ssl ) ) != 0 )
        return( ret );

#if defined(MBEDTLS_SSL_PROTO_DTLS)
    if( ssl->conf->transport == MBEDTLS_SSL_TRANSPORT_DATAGRAM &&
        ssl->handshake->retransmit_state == MBEDTLS_SSL_RETRANS_SENDING )
    {
        if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
            return( ret );
    }
#endif

    /* Change state now, so that it is right in mbedtls_ssl_read_record(), used
     * by DTLS for dropping out-of-sequence ChangeCipherSpec records */
#if defined(MBEDTLS_SSL_SESSION_TICKETS)
    if( ssl->state == MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC &&
        ssl->handshake->new_session_ticket != 0 )
    {
        ssl->state = MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET;
    }
#endif

    switch( ssl->state )
    {
        case MBEDTLS_SSL_HELLO_REQUEST:
            ssl->state = MBEDTLS_SSL_CLIENT_HELLO;
            break;

       /*
        *  ==>   ClientHello
        */
       case MBEDTLS_SSL_CLIENT_HELLO:
           ret = FUNC16( ssl );
           break;

       /*
        *  <==   ServerHello
        *        Certificate
        *      ( ServerKeyExchange  )
        *      ( CertificateRequest )
        *        ServerHelloDone
        */
       case MBEDTLS_SSL_SERVER_HELLO:
           ret = FUNC12( ssl );
           break;

       case MBEDTLS_SSL_SERVER_CERTIFICATE:
           ret = FUNC3( ssl );
           break;

       case MBEDTLS_SSL_SERVER_KEY_EXCHANGE:
           ret = FUNC14( ssl );
           break;

       case MBEDTLS_SSL_CERTIFICATE_REQUEST:
           ret = FUNC10( ssl );
           break;

       case MBEDTLS_SSL_SERVER_HELLO_DONE:
           ret = FUNC13( ssl );
           break;

       /*
        *  ==> ( Certificate/Alert  )
        *        ClientKeyExchange
        *      ( CertificateVerify  )
        *        ChangeCipherSpec
        *        Finished
        */
       case MBEDTLS_SSL_CLIENT_CERTIFICATE:
           ret = FUNC7( ssl );
           break;

       case MBEDTLS_SSL_CLIENT_KEY_EXCHANGE:
           ret = FUNC17( ssl );
           break;

       case MBEDTLS_SSL_CERTIFICATE_VERIFY:
           ret = FUNC15( ssl );
           break;

       case MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC:
           ret = FUNC8( ssl );
           break;

       case MBEDTLS_SSL_CLIENT_FINISHED:
           ret = FUNC9( ssl );
           break;

       /*
        *  <==   ( NewSessionTicket )
        *        ChangeCipherSpec
        *        Finished
        */
#if defined(MBEDTLS_SSL_SESSION_TICKETS)
       case MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET:
           ret = ssl_parse_new_session_ticket( ssl );
           break;
#endif

       case MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC:
           ret = FUNC4( ssl );
           break;

       case MBEDTLS_SSL_SERVER_FINISHED:
           ret = FUNC5( ssl );
           break;

       case MBEDTLS_SSL_FLUSH_BUFFERS:
           FUNC0( 2, ( "handshake: done" ) );
           ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
           break;

       case MBEDTLS_SSL_HANDSHAKE_WRAPUP:
           FUNC2( ssl );
           break;

       default:
           FUNC0( 1, ( "invalid state %d", ssl->state ) );
           return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
   }

    return( ret );
}