#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* handshake; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {int /*<<< orphan*/  ecdh_ctx; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE ; 
 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const**,unsigned char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4( mbedtls_ssl_context *ssl,
                                         unsigned char **p,
                                         unsigned char *end )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;

    /*
     * Ephemeral ECDH parameters:
     *
     * struct {
     *     ECParameters curve_params;
     *     ECPoint      public;
     * } ServerECDHParams;
     */
    if( ( ret = FUNC2( &ssl->handshake->ecdh_ctx,
                                  (const unsigned char **) p, end ) ) != 0 )
    {
        FUNC1( 1, ( "mbedtls_ecdh_read_params" ), ret );
        return( ret );
    }

    if( FUNC3( ssl ) != 0 )
    {
        FUNC0( 1, ( "bad server key exchange message (ECDHE curve)" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE );
    }

    return( ret );
}