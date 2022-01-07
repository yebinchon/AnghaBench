
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* in_buf; unsigned char* out_buf; unsigned char* out_hdr; unsigned char* out_ctr; unsigned char* out_len; unsigned char* out_iv; unsigned char* out_msg; unsigned char* in_hdr; unsigned char* in_ctr; unsigned char* in_len; unsigned char* in_iv; unsigned char* in_msg; TYPE_2__ const* conf; } ;
typedef TYPE_1__ mbedtls_ssl_context ;
struct TYPE_7__ {scalar_t__ transport; } ;
typedef TYPE_2__ mbedtls_ssl_config ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 size_t MBEDTLS_SSL_BUFFER_LEN ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 scalar_t__ mbedtls_calloc (int,size_t const) ;
 int mbedtls_free (unsigned char*) ;
 int ssl_handshake_init (TYPE_1__*) ;

int mbedtls_ssl_setup( mbedtls_ssl_context *ssl,
                       const mbedtls_ssl_config *conf )
{
    int ret;
    const size_t len = MBEDTLS_SSL_BUFFER_LEN;

    ssl->conf = conf;




    if( ( ssl-> in_buf = (unsigned char*)mbedtls_calloc( 1, len ) ) == ((void*)0) ||
        ( ssl->out_buf = (unsigned char*)mbedtls_calloc( 1, len ) ) == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "alloc(%d bytes) failed", len ) );
        mbedtls_free( ssl->in_buf );
        ssl->in_buf = ((void*)0);
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }
    {
        ssl->out_ctr = ssl->out_buf;
        ssl->out_hdr = ssl->out_buf + 8;
        ssl->out_len = ssl->out_buf + 11;
        ssl->out_iv = ssl->out_buf + 13;
        ssl->out_msg = ssl->out_buf + 13;

        ssl->in_ctr = ssl->in_buf;
        ssl->in_hdr = ssl->in_buf + 8;
        ssl->in_len = ssl->in_buf + 11;
        ssl->in_iv = ssl->in_buf + 13;
        ssl->in_msg = ssl->in_buf + 13;
    }

    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );

    return( 0 );
}
