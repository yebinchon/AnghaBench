#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* handshake; TYPE_3__* session_negotiate; } ;
typedef  TYPE_4__ mbedtls_ssl_context ;
typedef  int /*<<< orphan*/  mbedtls_ecp_keypair ;
struct TYPE_9__ {TYPE_2__* peer_cert; } ;
struct TYPE_8__ {int /*<<< orphan*/  pk; } ;
struct TYPE_7__ {int /*<<< orphan*/  ecdh_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_ECDH_THEIRS ; 
 int MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE ; 
 int MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH ; 
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  MBEDTLS_PK_ECKEY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6( mbedtls_ssl_context *ssl )
{
    int ret;
    const mbedtls_ecp_keypair *peer_key;

    if( ssl->session_negotiate->peer_cert == NULL )
    {
        FUNC0( 2, ( "certificate required" ) );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    if( ! FUNC3( &ssl->session_negotiate->peer_cert->pk,
                     MBEDTLS_PK_ECKEY ) )
    {
        FUNC0( 1, ( "server key not ECDH capable" ) );
        return( MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH );
    }

    peer_key = FUNC4( ssl->session_negotiate->peer_cert->pk );

    if( ( ret = FUNC2( &ssl->handshake->ecdh_ctx, peer_key,
                                 MBEDTLS_ECDH_THEIRS ) ) != 0 )
    {
        FUNC1( 1, ( "mbedtls_ecdh_get_params" ), ret );
        return( ret );
    }

    if( FUNC5( ssl ) != 0 )
    {
        FUNC0( 1, ( "bad server certificate (ECDH curve)" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE );
    }

    return( ret );
}