
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int (* f_recv ) (int ,size_t,size_t) ;int (* f_recv_timeout ) (int ,size_t,size_t,int ) ;size_t in_hdr; size_t in_buf; scalar_t__ next_record_offset; size_t in_left; scalar_t__ state; scalar_t__ renego_status; int p_bio; TYPE_2__* conf; TYPE_1__* handshake; int * f_get_timer; int * f_set_timer; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_11__ {scalar_t__ transport; scalar_t__ endpoint; int read_timeout; } ;
struct TYPE_10__ {int retransmit_timeout; } ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_CONN_EOF ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_SSL_TIMEOUT ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 size_t MBEDTLS_SSL_BUFFER_LEN ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_PENDING ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_resend (TYPE_3__*) ;
 int memmove (size_t,size_t,size_t) ;
 scalar_t__ ssl_check_timer (TYPE_3__*) ;
 scalar_t__ ssl_double_retransmit_timeout (TYPE_3__*) ;
 int ssl_resend_hello_request (TYPE_3__*) ;
 int ssl_set_timer (TYPE_3__*,int ) ;
 int stub1 (int ,size_t,size_t,int ) ;
 int stub2 (int ,size_t,size_t) ;
 int stub3 (int ,size_t,size_t,int ) ;
 int stub4 (int ,size_t,size_t) ;

int mbedtls_ssl_fetch_input( mbedtls_ssl_context *ssl, size_t nb_want )
{
    int ret;
    size_t len;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> fetch input" ) );

    if( ssl->f_recv == ((void*)0) && ssl->f_recv_timeout == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "Bad usage of mbedtls_ssl_set_bio() "
                            "or mbedtls_ssl_set_bio()" ) );
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    if( nb_want > MBEDTLS_SSL_BUFFER_LEN - (size_t)( ssl->in_hdr - ssl->in_buf ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "requesting more data than fits" ) );
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "in_left: %d, nb_want: %d",
                       ssl->in_left, nb_want ) );

        while( ssl->in_left < nb_want )
        {
            len = nb_want - ssl->in_left;

            if( ssl_check_timer( ssl ) != 0 )
                ret = MBEDTLS_ERR_SSL_TIMEOUT;
            else
            {
                if( ssl->f_recv_timeout != ((void*)0) )
                {
                    ret = ssl->f_recv_timeout( ssl->p_bio,
                                               ssl->in_hdr + ssl->in_left, len,
                                               ssl->conf->read_timeout );
                }
                else
                {
                    ret = ssl->f_recv( ssl->p_bio,
                                       ssl->in_hdr + ssl->in_left, len );
                }
            }

            MBEDTLS_SSL_DEBUG_MSG( 2, ( "in_left: %d, nb_want: %d",
                                        ssl->in_left, nb_want ) );
            MBEDTLS_SSL_DEBUG_RET( 2, "ssl->f_recv(_timeout)", ret );

            if( ret == 0 )
                return( MBEDTLS_ERR_SSL_CONN_EOF );

            if( ret < 0 )
                return( ret );

            ssl->in_left += ret;
        }
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= fetch input" ) );

    return( 0 );
}
