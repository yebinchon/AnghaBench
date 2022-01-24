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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__* state; } ;
typedef  TYPE_1__ mbedtls_sha256_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/ * SHA256_K ; 

void FUNC3( mbedtls_sha256_context *ctx, const unsigned char data[64] )
{
    uint32_t temp1, temp2, W[64];
    uint32_t A[8];
    unsigned int i;

    for( i = 0; i < 8; i++ )
        A[i] = ctx->state[i];

#if defined(MBEDTLS_SHA256_SMALLER)
    for( i = 0; i < 64; i++ )
    {
        if( i < 16 )
            GET_UINT32_BE( W[i], data, 4 * i );
        else
            R( i );

        P( A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7], W[i], SHA256_K[i] );

        temp1 = A[7]; A[7] = A[6]; A[6] = A[5]; A[5] = A[4]; A[4] = A[3];
        A[3] = A[2]; A[2] = A[1]; A[1] = A[0]; A[0] = temp1;
    }
#else /* MBEDTLS_SHA256_SMALLER */
    for( i = 0; i < 16; i++ )
        FUNC0( W[i], data, 4 * i );

    for( i = 0; i < 16; i += 8 )
    {
        FUNC1( A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7], W[i+0], SHA256_K[i+0] );
        FUNC1( A[7], A[0], A[1], A[2], A[3], A[4], A[5], A[6], W[i+1], SHA256_K[i+1] );
        FUNC1( A[6], A[7], A[0], A[1], A[2], A[3], A[4], A[5], W[i+2], SHA256_K[i+2] );
        FUNC1( A[5], A[6], A[7], A[0], A[1], A[2], A[3], A[4], W[i+3], SHA256_K[i+3] );
        FUNC1( A[4], A[5], A[6], A[7], A[0], A[1], A[2], A[3], W[i+4], SHA256_K[i+4] );
        FUNC1( A[3], A[4], A[5], A[6], A[7], A[0], A[1], A[2], W[i+5], SHA256_K[i+5] );
        FUNC1( A[2], A[3], A[4], A[5], A[6], A[7], A[0], A[1], W[i+6], SHA256_K[i+6] );
        FUNC1( A[1], A[2], A[3], A[4], A[5], A[6], A[7], A[0], W[i+7], SHA256_K[i+7] );
    }

    for( i = 16; i < 64; i += 8 )
    {
        FUNC1( A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7], FUNC2(i+0), SHA256_K[i+0] );
        FUNC1( A[7], A[0], A[1], A[2], A[3], A[4], A[5], A[6], FUNC2(i+1), SHA256_K[i+1] );
        FUNC1( A[6], A[7], A[0], A[1], A[2], A[3], A[4], A[5], FUNC2(i+2), SHA256_K[i+2] );
        FUNC1( A[5], A[6], A[7], A[0], A[1], A[2], A[3], A[4], FUNC2(i+3), SHA256_K[i+3] );
        FUNC1( A[4], A[5], A[6], A[7], A[0], A[1], A[2], A[3], FUNC2(i+4), SHA256_K[i+4] );
        FUNC1( A[3], A[4], A[5], A[6], A[7], A[0], A[1], A[2], FUNC2(i+5), SHA256_K[i+5] );
        FUNC1( A[2], A[3], A[4], A[5], A[6], A[7], A[0], A[1], FUNC2(i+6), SHA256_K[i+6] );
        FUNC1( A[1], A[2], A[3], A[4], A[5], A[6], A[7], A[0], FUNC2(i+7), SHA256_K[i+7] );
    }
#endif /* MBEDTLS_SHA256_SMALLER */

    for( i = 0; i < 8; i++ )
        ctx->state[i] += A[i];
}