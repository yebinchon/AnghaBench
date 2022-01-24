#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ minor_ver; unsigned char* out_msg; TYPE_4__* conf; TYPE_3__* handshake; TYPE_2__* session_negotiate; } ;
typedef  TYPE_5__ mbedtls_ssl_context ;
struct TYPE_10__ {int (* f_rng ) (int /*<<< orphan*/ ,unsigned char*,int) ;int /*<<< orphan*/  p_rng; int /*<<< orphan*/  transport; int /*<<< orphan*/  max_minor_ver; int /*<<< orphan*/  max_major_ver; } ;
struct TYPE_9__ {unsigned char* premaster; int pmslen; } ;
struct TYPE_8__ {TYPE_1__* peer_cert; } ;
struct TYPE_7__ {int /*<<< orphan*/  pk; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ; 
 int MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH ; 
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  MBEDTLS_PK_RSA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 size_t MBEDTLS_SSL_MAX_CONTENT_LEN ; 
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,unsigned char*,size_t*,size_t,int (*) (int /*<<< orphan*/ ,unsigned char*,int),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC6( mbedtls_ssl_context *ssl,
                                    size_t offset, size_t *olen,
                                    size_t pms_offset )
{
    int ret;
    size_t len_bytes = ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_0 ? 0 : 2;
    unsigned char *p = ssl->handshake->premaster + pms_offset;

    if( offset + len_bytes > MBEDTLS_SSL_MAX_CONTENT_LEN )
    {
        FUNC0( 1, ( "buffer too small for encrypted pms" ) );
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );
    }

    /*
     * Generate (part of) the pre-master as
     *  struct {
     *      ProtocolVersion client_version;
     *      opaque random[46];
     *  } PreMasterSecret;
     */
    FUNC4( ssl->conf->max_major_ver, ssl->conf->max_minor_ver,
                       ssl->conf->transport, p );

    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p + 2, 46 ) ) != 0 )
    {
        FUNC1( 1, "f_rng", ret );
        return( ret );
    }

    ssl->handshake->pmslen = 48;

    if( ssl->session_negotiate->peer_cert == NULL )
    {
        FUNC0( 2, ( "certificate required" ) );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    /*
     * Now write it out, encrypted
     */
    if( ! FUNC2( &ssl->session_negotiate->peer_cert->pk,
                MBEDTLS_PK_RSA ) )
    {
        FUNC0( 1, ( "certificate key type mismatch" ) );
        return( MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH );
    }

    if( ( ret = FUNC3( &ssl->session_negotiate->peer_cert->pk,
                            p, ssl->handshake->pmslen,
                            ssl->out_msg + offset + len_bytes, olen,
                            MBEDTLS_SSL_MAX_CONTENT_LEN - offset - len_bytes,
                            ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_rsa_pkcs1_encrypt", ret );
        return( ret );
    }

#if defined(MBEDTLS_SSL_PROTO_TLS1) || defined(MBEDTLS_SSL_PROTO_TLS1_1) || \
    defined(MBEDTLS_SSL_PROTO_TLS1_2)
    if( len_bytes == 2 )
    {
        ssl->out_msg[offset+0] = (unsigned char)( *olen >> 8 );
        ssl->out_msg[offset+1] = (unsigned char)( *olen      );
        *olen += 2;
    }
#endif

    return( 0 );
}