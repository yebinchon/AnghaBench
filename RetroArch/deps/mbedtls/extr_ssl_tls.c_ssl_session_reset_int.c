
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ split_done; scalar_t__ cli_id_len; int * cli_id; int * alpn_chosen; int * session; int * transform; scalar_t__ in_buf; scalar_t__ out_buf; int * transform_out; int * transform_in; scalar_t__ out_left; scalar_t__ out_msglen; scalar_t__ out_msgtype; scalar_t__ out_msg; scalar_t__ keep_current_message; scalar_t__ nb_zero; scalar_t__ in_hslen; scalar_t__ in_epoch; scalar_t__ next_record_offset; scalar_t__ in_left; scalar_t__ in_msglen; scalar_t__ in_msgtype; scalar_t__ in_msg; int * in_offt; int secure_renegotiation; scalar_t__ peer_verify_data; scalar_t__ own_verify_data; scalar_t__ verify_data_len; scalar_t__ renego_records_seen; int renego_status; int state; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_ERR_SSL_HW_ACCEL_FAILED ;
 int MBEDTLS_SSL_BUFFER_LEN ;
 scalar_t__ MBEDTLS_SSL_CBC_RECORD_SPLITTING_DISABLED ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HELLO_REQUEST ;
 int MBEDTLS_SSL_INITIAL_HANDSHAKE ;
 int MBEDTLS_SSL_LEGACY_RENEGOTIATION ;
 int MBEDTLS_SSL_VERIFY_DATA_MAX_LEN ;
 int mbedtls_free (int *) ;
 int mbedtls_ssl_hw_record_reset (TYPE_1__*) ;
 int mbedtls_ssl_session_free (int *) ;
 int mbedtls_ssl_transform_free (int *) ;
 int memset (scalar_t__,int ,int ) ;
 int ssl_dtls_replay_reset (TYPE_1__*) ;
 int ssl_handshake_init (TYPE_1__*) ;
 int ssl_set_timer (TYPE_1__*,int ) ;

__attribute__((used)) static int ssl_session_reset_int( mbedtls_ssl_context *ssl, int partial )
{
    int ret;

    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;


    ssl_set_timer( ssl, 0 );
    ssl->secure_renegotiation = MBEDTLS_SSL_LEGACY_RENEGOTIATION;

    ssl->in_offt = ((void*)0);

    ssl->in_msg = ssl->in_buf + 13;
    ssl->in_msgtype = 0;
    ssl->in_msglen = 0;
    if( partial == 0 )
        ssl->in_left = 0;
    ssl->in_hslen = 0;
    ssl->nb_zero = 0;

    ssl->keep_current_message = 0;

    ssl->out_msg = ssl->out_buf + 13;
    ssl->out_msgtype = 0;
    ssl->out_msglen = 0;
    ssl->out_left = 0;





    ssl->transform_in = ((void*)0);
    ssl->transform_out = ((void*)0);

    memset( ssl->out_buf, 0, MBEDTLS_SSL_BUFFER_LEN );
    if( partial == 0 )
        memset( ssl->in_buf, 0, MBEDTLS_SSL_BUFFER_LEN );
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        mbedtls_free( ssl->transform );
        ssl->transform = ((void*)0);
    }

    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        mbedtls_free( ssl->session );
        ssl->session = ((void*)0);
    }
    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );

    return( 0 );
}
