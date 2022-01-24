#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ mbedtls_entropy_context ;

/* Variables and functions */
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3( mbedtls_entropy_context *ctx )
{
    int ret;

#if defined(MBEDTLS_THREADING_C)
    if( ( ret = mbedtls_mutex_lock( &ctx->mutex ) ) != 0 )
        return( ret );
#endif

    ret = FUNC0( ctx );

#if defined(MBEDTLS_THREADING_C)
    if( mbedtls_mutex_unlock( &ctx->mutex ) != 0 )
        return( MBEDTLS_ERR_THREADING_MUTEX_ERROR );
#endif

    return( ret );
}