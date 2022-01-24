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
struct TYPE_4__ {int* total; int* state; scalar_t__ is384; } ;
typedef  TYPE_1__ mbedtls_sha512_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 unsigned char* sha512_padding ; 

void FUNC2( mbedtls_sha512_context *ctx, unsigned char output[64] )
{
    size_t last, padn;
    uint64_t high, low;
    unsigned char msglen[16];

    high = ( ctx->total[0] >> 61 )
         | ( ctx->total[1] <<  3 );
    low  = ( ctx->total[0] <<  3 );

    FUNC0( high, msglen, 0 );
    FUNC0( low,  msglen, 8 );

    last = (size_t)( ctx->total[0] & 0x7F );
    padn = ( last < 112 ) ? ( 112 - last ) : ( 240 - last );

    FUNC1( ctx, sha512_padding, padn );
    FUNC1( ctx, msglen, 16 );

    FUNC0( ctx->state[0], output,  0 );
    FUNC0( ctx->state[1], output,  8 );
    FUNC0( ctx->state[2], output, 16 );
    FUNC0( ctx->state[3], output, 24 );
    FUNC0( ctx->state[4], output, 32 );
    FUNC0( ctx->state[5], output, 40 );

    if( ctx->is384 == 0 )
    {
        FUNC0( ctx->state[6], output, 48 );
        FUNC0( ctx->state[7], output, 56 );
    }
}