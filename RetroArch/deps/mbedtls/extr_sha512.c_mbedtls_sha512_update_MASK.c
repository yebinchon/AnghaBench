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
struct TYPE_4__ {int* total; unsigned char const* buffer; } ;
typedef  TYPE_1__ mbedtls_sha512_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned char const*,size_t) ; 

void FUNC2( mbedtls_sha512_context *ctx, const unsigned char *input,
                    size_t ilen )
{
    size_t fill;
    unsigned int left;

    if( ilen == 0 )
        return;

    left = (unsigned int) (ctx->total[0] & 0x7F);
    fill = 128 - left;

    ctx->total[0] += (uint64_t) ilen;

    if( ctx->total[0] < (uint64_t) ilen )
        ctx->total[1]++;

    if( left && ilen >= fill )
    {
        FUNC1( (void *) (ctx->buffer + left), input, fill );
        FUNC0( ctx, ctx->buffer );
        input += fill;
        ilen  -= fill;
        left = 0;
    }

    while( ilen >= 128 )
    {
        FUNC0( ctx, input );
        input += 128;
        ilen  -= 128;
    }

    if( ilen > 0 )
        FUNC1( (void *) (ctx->buffer + left), input, ilen );
}