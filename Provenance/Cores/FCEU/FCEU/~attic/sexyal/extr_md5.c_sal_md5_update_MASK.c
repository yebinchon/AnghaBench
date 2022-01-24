#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct sal_md5_context {int* total; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sal_md5_context*,int /*<<< orphan*/ *) ; 

void FUNC2( struct sal_md5_context *ctx, uint8_t *input, uint32_t length )
{
    uint32_t left, fill;

    if( ! length ) return;

    left = ( ctx->total[0] >> 3 ) & 0x3F;
    fill = 64 - left;

    ctx->total[0] += length <<  3;
    ctx->total[1] += length >> 29;

    ctx->total[0] &= 0xFFFFFFFF;
    ctx->total[1] += ctx->total[0] < ( length << 3 );

    if( left && length >= fill )
    {
        FUNC0( (void *) (ctx->buffer + left), (void *) input, fill );
        FUNC1( ctx, ctx->buffer );
        length -= fill;
        input  += fill;
        left = 0;
    }

    while( length >= 64 )
    {
        FUNC1( ctx, input );
        length -= 64;
        input  += 64;
    }

    if( length )
    {
        FUNC0( (void *) (ctx->buffer + left), (void *) input, length );
    }
}