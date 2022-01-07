
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ in_msglen; scalar_t__ in_hslen; int* in_msg; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_9__ {unsigned int in_msg_seq; int in_flight_start_seq; int * hs_msg; } ;
struct TYPE_8__ {scalar_t__ transport; } ;


 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_SSL_INVALID_RECORD ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HS_HELLO_VERIFY_REQUEST ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 scalar_t__ mbedtls_ssl_hs_hdr_len (TYPE_3__*) ;
 int mbedtls_ssl_resend (TYPE_3__*) ;
 scalar_t__ memcmp (int*,char*,int) ;
 int ssl_reassemble_dtls_handshake (TYPE_3__*) ;

int mbedtls_ssl_prepare_handshake_record( mbedtls_ssl_context *ssl )
{
    if( ssl->in_msglen < mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "handshake message too short: %d",
                            ssl->in_msglen ) );
        return( MBEDTLS_ERR_SSL_INVALID_RECORD );
    }

    ssl->in_hslen = mbedtls_ssl_hs_hdr_len( ssl ) + (
                    ( ssl->in_msg[1] << 16 ) |
                    ( ssl->in_msg[2] << 8 ) |
                      ssl->in_msg[3] );

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "handshake message: msglen ="
                        " %d, type = %d, hslen = %d",
                        ssl->in_msglen, ssl->in_msg[0], ssl->in_hslen ) );
    if( ssl->in_msglen < ssl->in_hslen )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "TLS handshake fragmentation not supported" ) );
        return( MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE );
    }

    return( 0 );
}
