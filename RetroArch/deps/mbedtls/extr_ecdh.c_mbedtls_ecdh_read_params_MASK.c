#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Qp; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecdh_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const**,int) ; 

int FUNC2( mbedtls_ecdh_context *ctx,
                      const unsigned char **buf, const unsigned char *end )
{
    int ret;

    if( ( ret = FUNC0( &ctx->grp, buf, end - *buf ) ) != 0 )
        return( ret );

    if( ( ret = FUNC1( &ctx->grp, &ctx->Qp, buf, end - *buf ) )
                != 0 )
        return( ret );

    return( 0 );
}