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
struct TYPE_4__ {int len; int add_len; unsigned char* buf; int /*<<< orphan*/  base_ectr; } ;
typedef  TYPE_1__ mbedtls_gcm_context ;

/* Variables and functions */
 int MBEDTLS_ERR_GCM_BAD_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 

int FUNC4( mbedtls_gcm_context *ctx,
                unsigned char *tag,
                size_t tag_len )
{
    unsigned char work_buf[16];
    size_t i;
    uint64_t orig_len = ctx->len * 8;
    uint64_t orig_add_len = ctx->add_len * 8;

    if( tag_len > 16 || tag_len < 4 )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    FUNC2( tag, ctx->base_ectr, tag_len );

    if( orig_len || orig_add_len )
    {
        FUNC3( work_buf, 0x00, 16 );

        FUNC0( ( orig_add_len >> 32 ), work_buf, 0  );
        FUNC0( ( orig_add_len       ), work_buf, 4  );
        FUNC0( ( orig_len     >> 32 ), work_buf, 8  );
        FUNC0( ( orig_len           ), work_buf, 12 );

        for( i = 0; i < 16; i++ )
            ctx->buf[i] ^= work_buf[i];

        FUNC1( ctx, ctx->buf, ctx->buf );

        for( i = 0; i < tag_len; i++ )
            tag[i] ^= ctx->buf[i];
    }

    return( 0 );
}