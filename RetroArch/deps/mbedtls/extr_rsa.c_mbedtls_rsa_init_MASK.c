#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3( mbedtls_rsa_context *ctx,
               int padding,
               int hash_id )
{
    FUNC2( ctx, 0, sizeof( mbedtls_rsa_context ) );

    FUNC1( ctx, padding, hash_id );

#if defined(MBEDTLS_THREADING_C)
    mbedtls_mutex_init( &ctx->mutex );
#endif
}