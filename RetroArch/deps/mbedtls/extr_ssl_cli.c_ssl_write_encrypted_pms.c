
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ minor_ver; unsigned char* out_msg; TYPE_4__* conf; TYPE_3__* handshake; TYPE_2__* session_negotiate; } ;
typedef TYPE_5__ mbedtls_ssl_context ;
struct TYPE_10__ {int (* f_rng ) (int ,unsigned char*,int) ;int p_rng; int transport; int max_minor_ver; int max_major_ver; } ;
struct TYPE_9__ {unsigned char* premaster; int pmslen; } ;
struct TYPE_8__ {TYPE_1__* peer_cert; } ;
struct TYPE_7__ {int pk; } ;


 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ;
 int MBEDTLS_PK_RSA ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 size_t MBEDTLS_SSL_MAX_CONTENT_LEN ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 int mbedtls_pk_can_do (int *,int ) ;
 int mbedtls_pk_encrypt (int *,unsigned char*,int,unsigned char*,size_t*,size_t,int (*) (int ,unsigned char*,int),int ) ;
 int mbedtls_ssl_write_version (int ,int ,int ,unsigned char*) ;
 int stub1 (int ,unsigned char*,int) ;

__attribute__((used)) static int ssl_write_encrypted_pms( mbedtls_ssl_context *ssl,
                                    size_t offset, size_t *olen,
                                    size_t pms_offset )
{
    int ret;
    size_t len_bytes = ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_0 ? 0 : 2;
    unsigned char *p = ssl->handshake->premaster + pms_offset;

    if( offset + len_bytes > MBEDTLS_SSL_MAX_CONTENT_LEN )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "buffer too small for encrypted pms" ) );
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );
    }
    mbedtls_ssl_write_version( ssl->conf->max_major_ver, ssl->conf->max_minor_ver,
                       ssl->conf->transport, p );

    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p + 2, 46 ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "f_rng", ret );
        return( ret );
    }

    ssl->handshake->pmslen = 48;

    if( ssl->session_negotiate->peer_cert == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "certificate required" ) );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }




    if( ! mbedtls_pk_can_do( &ssl->session_negotiate->peer_cert->pk,
                MBEDTLS_PK_RSA ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "certificate key type mismatch" ) );
        return( MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH );
    }

    if( ( ret = mbedtls_pk_encrypt( &ssl->session_negotiate->peer_cert->pk,
                            p, ssl->handshake->pmslen,
                            ssl->out_msg + offset + len_bytes, olen,
                            MBEDTLS_SSL_MAX_CONTENT_LEN - offset - len_bytes,
                            ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_rsa_pkcs1_encrypt", ret );
        return( ret );
    }
    return( 0 );
}
