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
struct TYPE_4__ {int /*<<< orphan*/  md_ctx_dec; int /*<<< orphan*/  md_ctx_enc; int /*<<< orphan*/  cipher_ctx_dec; int /*<<< orphan*/  cipher_ctx_enc; int /*<<< orphan*/  ctx_inflate; int /*<<< orphan*/  ctx_deflate; } ;
typedef  TYPE_1__ mbedtls_ssl_transform ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5( mbedtls_ssl_transform *transform )
{
    if( transform == NULL )
        return;

#if defined(MBEDTLS_ZLIB_SUPPORT)
    deflateEnd( &transform->ctx_deflate );
    inflateEnd( &transform->ctx_inflate );
#endif

    FUNC2( &transform->cipher_ctx_enc );
    FUNC2( &transform->cipher_ctx_dec );

    FUNC3( &transform->md_ctx_enc );
    FUNC3( &transform->md_ctx_dec );

    FUNC4( transform, sizeof( mbedtls_ssl_transform ) );
}