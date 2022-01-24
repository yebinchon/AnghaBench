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
typedef  int uint32_t ;
struct TYPE_4__ {int* total; int* state; } ;
typedef  TYPE_1__ mbedtls_md5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 unsigned char* md5_padding ; 

void FUNC2( mbedtls_md5_context *ctx, unsigned char output[16] )
{
    uint32_t last, padn;
    uint32_t high, low;
    unsigned char msglen[8];

    high = ( ctx->total[0] >> 29 )
         | ( ctx->total[1] <<  3 );
    low  = ( ctx->total[0] <<  3 );

    FUNC0( low,  msglen, 0 );
    FUNC0( high, msglen, 4 );

    last = ctx->total[0] & 0x3F;
    padn = ( last < 56 ) ? ( 56 - last ) : ( 120 - last );

    FUNC1( ctx, md5_padding, padn );
    FUNC1( ctx, msglen, 8 );

    FUNC0( ctx->state[0], output,  0 );
    FUNC0( ctx->state[1], output,  4 );
    FUNC0( ctx->state[2], output,  8 );
    FUNC0( ctx->state[3], output, 12 );
}