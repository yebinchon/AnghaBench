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
typedef  int uint64_t ;
struct TYPE_4__ {unsigned char* y; unsigned char* buf; int mode; size_t add_len; int /*<<< orphan*/  base_ectr; int /*<<< orphan*/  cipher_ctx; scalar_t__ len; } ;
typedef  TYPE_1__ mbedtls_gcm_context ;

/* Variables and functions */
 int MBEDTLS_ERR_GCM_BAD_INPUT ; 
 int /*<<< orphan*/  FUNC0 (size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char const*,unsigned char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 

int FUNC5( mbedtls_gcm_context *ctx,
                int mode,
                const unsigned char *iv,
                size_t iv_len,
                const unsigned char *add,
                size_t add_len )
{
    int ret;
    unsigned char work_buf[16];
    size_t i;
    const unsigned char *p;
    size_t use_len, olen = 0;

    /* IV and AD are limited to 2^64 bits, so 2^61 bytes */
    /* IV is not allowed to be zero length */
    if( iv_len == 0 ||
      ( (uint64_t) iv_len  ) >> 61 != 0 ||
      ( (uint64_t) add_len ) >> 61 != 0 )
    {
        return( MBEDTLS_ERR_GCM_BAD_INPUT );
    }

    FUNC4( ctx->y, 0x00, sizeof(ctx->y) );
    FUNC4( ctx->buf, 0x00, sizeof(ctx->buf) );

    ctx->mode = mode;
    ctx->len = 0;
    ctx->add_len = 0;

    if( iv_len == 12 )
    {
        FUNC3( ctx->y, iv, iv_len );
        ctx->y[15] = 1;
    }
    else
    {
        FUNC4( work_buf, 0x00, 16 );
        FUNC0( iv_len * 8, work_buf, 12 );

        p = iv;
        while( iv_len > 0 )
        {
            use_len = ( iv_len < 16 ) ? iv_len : 16;

            for( i = 0; i < use_len; i++ )
                ctx->y[i] ^= p[i];

            FUNC1( ctx, ctx->y, ctx->y );

            iv_len -= use_len;
            p += use_len;
        }

        for( i = 0; i < 16; i++ )
            ctx->y[i] ^= work_buf[i];

        FUNC1( ctx, ctx->y, ctx->y );
    }

    if( ( ret = FUNC2( &ctx->cipher_ctx, ctx->y, 16, ctx->base_ectr,
                             &olen ) ) != 0 )
    {
        return( ret );
    }

    ctx->add_len = add_len;
    p = add;
    while( add_len > 0 )
    {
        use_len = ( add_len < 16 ) ? add_len : 16;

        for( i = 0; i < use_len; i++ )
            ctx->buf[i] ^= p[i];

        FUNC1( ctx, ctx->buf, ctx->buf );

        add_len -= use_len;
        p += use_len;
    }

    return( 0 );
}