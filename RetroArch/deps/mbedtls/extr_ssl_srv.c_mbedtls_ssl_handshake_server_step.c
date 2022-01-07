
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {int state; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_23__ {scalar_t__ retransmit_state; int new_session_ticket; } ;
struct TYPE_22__ {scalar_t__ transport; } ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_HELLO_VERIFY_REQUIRED ;







 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;

 int MBEDTLS_SSL_HANDSHAKE_OVER ;


 scalar_t__ MBEDTLS_SSL_RETRANS_SENDING ;







 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_flush_output (TYPE_3__*) ;
 int mbedtls_ssl_handshake_wrapup (TYPE_3__*) ;
 int mbedtls_ssl_parse_certificate (TYPE_3__*) ;
 int mbedtls_ssl_parse_change_cipher_spec (TYPE_3__*) ;
 int mbedtls_ssl_parse_finished (TYPE_3__*) ;
 int mbedtls_ssl_resend (TYPE_3__*) ;
 int mbedtls_ssl_write_certificate (TYPE_3__*) ;
 int mbedtls_ssl_write_change_cipher_spec (TYPE_3__*) ;
 int mbedtls_ssl_write_finished (TYPE_3__*) ;
 int ssl_parse_certificate_verify (TYPE_3__*) ;
 int ssl_parse_client_hello (TYPE_3__*) ;
 int ssl_parse_client_key_exchange (TYPE_3__*) ;
 int ssl_write_certificate_request (TYPE_3__*) ;
 int ssl_write_new_session_ticket (TYPE_3__*) ;
 int ssl_write_server_hello (TYPE_3__*) ;
 int ssl_write_server_hello_done (TYPE_3__*) ;
 int ssl_write_server_key_exchange (TYPE_3__*) ;

int mbedtls_ssl_handshake_server_step( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER || ssl->handshake == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "server state: %d", ssl->state ) );

    if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
        return( ret );
    switch( ssl->state )
    {
        case 135:
            ssl->state = 139;
            break;




        case 139:
            ret = ssl_parse_client_hello( ssl );
            break;
        case 131:
            ret = ssl_write_server_hello( ssl );
            break;

        case 134:
            ret = mbedtls_ssl_write_certificate( ssl );
            break;

        case 128:
            ret = ssl_write_server_key_exchange( ssl );
            break;

        case 144:
            ret = ssl_write_certificate_request( ssl );
            break;

        case 130:
            ret = ssl_write_server_hello_done( ssl );
            break;
        case 142:
            ret = mbedtls_ssl_parse_certificate( ssl );
            break;

        case 138:
            ret = ssl_parse_client_key_exchange( ssl );
            break;

        case 143:
            ret = ssl_parse_certificate_verify( ssl );
            break;

        case 141:
            ret = mbedtls_ssl_parse_change_cipher_spec( ssl );
            break;

        case 140:
            ret = mbedtls_ssl_parse_finished( ssl );
            break;






        case 133:





                ret = mbedtls_ssl_write_change_cipher_spec( ssl );
            break;

        case 132:
            ret = mbedtls_ssl_write_finished( ssl );
            break;

        case 137:
            MBEDTLS_SSL_DEBUG_MSG( 2, ( "handshake: done" ) );
            ssl->state = 136;
            break;

        case 136:
            mbedtls_ssl_handshake_wrapup( ssl );
            break;

        default:
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "invalid state %d", ssl->state ) );
            return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    return( ret );
}
