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
typedef  int uint32_t ;
struct TYPE_3__ {int* rk; int nr; } ;
typedef  TYPE_1__ mbedtls_aes_context ;
typedef  size_t Y3 ;
typedef  size_t Y2 ;
typedef  size_t Y1 ;
typedef  size_t Y0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*,int) ; 
 scalar_t__* RSb ; 

int FUNC3( mbedtls_aes_context *ctx,
                                  const unsigned char input[16],
                                  unsigned char output[16] )
{
    int i;
    uint32_t *RK, X0, X1, X2, X3, Y0, Y1, Y2, Y3;

    RK = ctx->rk;

    FUNC1( X0, input,  0 ); X0 ^= *RK++;
    FUNC1( X1, input,  4 ); X1 ^= *RK++;
    FUNC1( X2, input,  8 ); X2 ^= *RK++;
    FUNC1( X3, input, 12 ); X3 ^= *RK++;

    for( i = ( ctx->nr >> 1 ) - 1; i > 0; i-- )
    {
        FUNC0( Y0, Y1, Y2, Y3, X0, X1, X2, X3 );
        FUNC0( X0, X1, X2, X3, Y0, Y1, Y2, Y3 );
    }

    FUNC0( Y0, Y1, Y2, Y3, X0, X1, X2, X3 );

    X0 = *RK++ ^ \
            ( (uint32_t) RSb[ ( Y0       ) & 0xFF ]       ) ^
            ( (uint32_t) RSb[ ( Y3 >>  8 ) & 0xFF ] <<  8 ) ^
            ( (uint32_t) RSb[ ( Y2 >> 16 ) & 0xFF ] << 16 ) ^
            ( (uint32_t) RSb[ ( Y1 >> 24 ) & 0xFF ] << 24 );

    X1 = *RK++ ^ \
            ( (uint32_t) RSb[ ( Y1       ) & 0xFF ]       ) ^
            ( (uint32_t) RSb[ ( Y0 >>  8 ) & 0xFF ] <<  8 ) ^
            ( (uint32_t) RSb[ ( Y3 >> 16 ) & 0xFF ] << 16 ) ^
            ( (uint32_t) RSb[ ( Y2 >> 24 ) & 0xFF ] << 24 );

    X2 = *RK++ ^ \
            ( (uint32_t) RSb[ ( Y2       ) & 0xFF ]       ) ^
            ( (uint32_t) RSb[ ( Y1 >>  8 ) & 0xFF ] <<  8 ) ^
            ( (uint32_t) RSb[ ( Y0 >> 16 ) & 0xFF ] << 16 ) ^
            ( (uint32_t) RSb[ ( Y3 >> 24 ) & 0xFF ] << 24 );

    X3 = *RK++ ^ \
            ( (uint32_t) RSb[ ( Y3       ) & 0xFF ]       ) ^
            ( (uint32_t) RSb[ ( Y2 >>  8 ) & 0xFF ] <<  8 ) ^
            ( (uint32_t) RSb[ ( Y1 >> 16 ) & 0xFF ] << 16 ) ^
            ( (uint32_t) RSb[ ( Y0 >> 24 ) & 0xFF ] << 24 );

    FUNC2( X0, output,  0 );
    FUNC2( X1, output,  4 );
    FUNC2( X2, output,  8 );
    FUNC2( X3, output, 12 );

    return( 0 );
}