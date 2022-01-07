
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {unsigned char* out_msg; int out_msglen; scalar_t__ minor_ver; unsigned char* out_ctr; unsigned char out_msgtype; unsigned char* out_hdr; unsigned char* out_len; unsigned char* out_iv; TYPE_4__* transform_out; TYPE_2__* conf; int major_ver; TYPE_3__* session_out; } ;
typedef TYPE_5__ mbedtls_ssl_context ;
typedef scalar_t__ mbedtls_cipher_mode_t ;
struct TYPE_15__ {unsigned char* iv; } ;
struct TYPE_13__ {int maclen; unsigned char* iv_enc; int ivlen; int fixed_ivlen; int md_ctx_enc; TYPE_7__ cipher_ctx_enc; TYPE_1__* ciphersuite_info; int mac_enc; } ;
struct TYPE_12__ {scalar_t__ encrypt_then_mac; } ;
struct TYPE_11__ {int (* f_rng ) (int ,unsigned char*,size_t) ;int p_rng; int transport; } ;
struct TYPE_10__ {int flags; } ;


 int MBEDTLS_CIPHERSUITE_SHORT_TAG ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 scalar_t__ MBEDTLS_MODE_CBC ;
 scalar_t__ MBEDTLS_MODE_CCM ;
 scalar_t__ MBEDTLS_MODE_GCM ;
 scalar_t__ MBEDTLS_MODE_STREAM ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,int) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_ETM_DISABLED ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_1 ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_2 ;
 int mbedtls_cipher_auth_encrypt (TYPE_7__*,unsigned char*,int,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t*,unsigned char*,unsigned char) ;
 int mbedtls_cipher_crypt (TYPE_7__*,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t*) ;
 scalar_t__ mbedtls_cipher_get_cipher_mode (TYPE_7__*) ;
 int mbedtls_md_hmac_finish (int *,unsigned char*) ;
 int mbedtls_md_hmac_reset (int *) ;
 int mbedtls_md_hmac_update (int *,unsigned char*,int) ;
 int mbedtls_ssl_write_version (int ,scalar_t__,int ,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int ssl_mac (int *,int ,unsigned char*,int,unsigned char*,unsigned char) ;
 int stub1 (int ,unsigned char*,size_t) ;

__attribute__((used)) static int ssl_encrypt_buf( mbedtls_ssl_context *ssl )
{
    mbedtls_cipher_mode_t mode;
    int auth_done = 0;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> encrypt buf" ) );

    if( ssl->session_out == ((void*)0) || ssl->transform_out == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    mode = mbedtls_cipher_get_cipher_mode( &ssl->transform_out->cipher_ctx_enc );

    MBEDTLS_SSL_DEBUG_BUF( 4, "before encrypt: output payload",
                      ssl->out_msg, ssl->out_msglen );
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }


    if( auth_done != 1 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= encrypt buf" ) );

    return( 0 );
}
