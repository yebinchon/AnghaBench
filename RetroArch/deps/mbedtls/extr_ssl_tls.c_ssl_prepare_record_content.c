
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ in_msglen; TYPE_2__* conf; TYPE_1__* session_in; int * transform_in; int in_msg; int in_hdr; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_11__ {scalar_t__ transport; } ;
struct TYPE_10__ {scalar_t__ compression; } ;


 int MBEDTLS_ERR_SSL_HW_ACCEL_FAILED ;
 int MBEDTLS_ERR_SSL_HW_ACCEL_FALLTHROUGH ;
 int MBEDTLS_ERR_SSL_INVALID_RECORD ;
 scalar_t__ MBEDTLS_SSL_COMPRESS_DEFLATE ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,int ,scalar_t__) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_MAX_CONTENT_LEN ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_dtls_replay_update (TYPE_3__*) ;
 scalar_t__ mbedtls_ssl_hdr_len (TYPE_3__*) ;
 int mbedtls_ssl_hw_record_read (TYPE_3__*) ;
 int ssl_decompress_buf (TYPE_3__*) ;
 int ssl_decrypt_buf (TYPE_3__*) ;

__attribute__((used)) static int ssl_prepare_record_content( mbedtls_ssl_context *ssl )
{
    int ret, done = 0;

    MBEDTLS_SSL_DEBUG_BUF( 4, "input record from network",
                   ssl->in_hdr, mbedtls_ssl_hdr_len( ssl ) + ssl->in_msglen );
    if( !done && ssl->transform_in != ((void*)0) )
    {
        if( ( ret = ssl_decrypt_buf( ssl ) ) != 0 )
        {
            MBEDTLS_SSL_DEBUG_RET( 1, "ssl_decrypt_buf", ret );
            return( ret );
        }

        MBEDTLS_SSL_DEBUG_BUF( 4, "input payload after decrypt",
                       ssl->in_msg, ssl->in_msglen );

        if( ssl->in_msglen > MBEDTLS_SSL_MAX_CONTENT_LEN )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad message length" ) );
            return( MBEDTLS_ERR_SSL_INVALID_RECORD );
        }
    }
    return( 0 );
}
