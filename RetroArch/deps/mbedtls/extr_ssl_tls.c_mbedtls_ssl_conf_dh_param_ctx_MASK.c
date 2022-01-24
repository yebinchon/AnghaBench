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
struct TYPE_5__ {int /*<<< orphan*/  dhm_G; int /*<<< orphan*/  dhm_P; } ;
typedef  TYPE_1__ mbedtls_ssl_config ;
struct TYPE_6__ {int /*<<< orphan*/  G; int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_dhm_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2( mbedtls_ssl_config *conf, mbedtls_dhm_context *dhm_ctx )
{
    int ret;

    if( ( ret = FUNC0( &conf->dhm_P, &dhm_ctx->P ) ) != 0 ||
        ( ret = FUNC0( &conf->dhm_G, &dhm_ctx->G ) ) != 0 )
    {
        FUNC1( &conf->dhm_P );
        FUNC1( &conf->dhm_G );
        return( ret );
    }

    return( 0 );
}