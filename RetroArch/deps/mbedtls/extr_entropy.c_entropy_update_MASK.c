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
struct TYPE_3__ {int /*<<< orphan*/  accumulator; } ;
typedef  TYPE_1__ mbedtls_entropy_context ;

/* Variables and functions */
 int MBEDTLS_ENTROPY_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,size_t,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC4( mbedtls_entropy_context *ctx, unsigned char source_id,
                           const unsigned char *data, size_t len )
{
    unsigned char header[2];
    unsigned char tmp[MBEDTLS_ENTROPY_BLOCK_SIZE];
    size_t use_len = len;
    const unsigned char *p = data;

    if( use_len > MBEDTLS_ENTROPY_BLOCK_SIZE )
    {
#if defined(MBEDTLS_ENTROPY_SHA512_ACCUMULATOR)
        mbedtls_sha512( data, len, tmp, 0 );
#else
        FUNC0( data, len, tmp, 0 );
#endif
        p = tmp;
        use_len = MBEDTLS_ENTROPY_BLOCK_SIZE;
    }

    header[0] = source_id;
    header[1] = use_len & 0xFF;

#if defined(MBEDTLS_ENTROPY_SHA512_ACCUMULATOR)
    mbedtls_sha512_update( &ctx->accumulator, header, 2 );
    mbedtls_sha512_update( &ctx->accumulator, p, use_len );
#else
    FUNC1( &ctx->accumulator, header, 2 );
    FUNC1( &ctx->accumulator, p, use_len );
#endif

    return( 0 );
}