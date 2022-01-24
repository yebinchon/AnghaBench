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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int nr; int /*<<< orphan*/ * rk; } ;
typedef  TYPE_1__ mbedtls_camellia_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5( mbedtls_camellia_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    int NR;
    uint32_t *RK, X[4];

    ( (void) mode );

    NR = ctx->nr;
    RK = ctx->rk;

    FUNC2( X[0], input,  0 );
    FUNC2( X[1], input,  4 );
    FUNC2( X[2], input,  8 );
    FUNC2( X[3], input, 12 );

    X[0] ^= *RK++;
    X[1] ^= *RK++;
    X[2] ^= *RK++;
    X[3] ^= *RK++;

    while( NR ) {
        --NR;
        FUNC4( X, RK, X + 2 );
        RK += 2;
        FUNC4( X + 2, RK, X );
        RK += 2;
        FUNC4( X, RK, X + 2 );
        RK += 2;
        FUNC4( X + 2, RK, X );
        RK += 2;
        FUNC4( X, RK, X + 2 );
        RK += 2;
        FUNC4( X + 2, RK, X );
        RK += 2;

        if( NR ) {
            FUNC0(X[0], X[1], RK[0], RK[1]);
            RK += 2;
            FUNC1(X[2], X[3], RK[0], RK[1]);
            RK += 2;
        }
    }

    X[2] ^= *RK++;
    X[3] ^= *RK++;
    X[0] ^= *RK++;
    X[1] ^= *RK++;

    FUNC3( X[2], output,  0 );
    FUNC3( X[3], output,  4 );
    FUNC3( X[0], output,  8 );
    FUNC3( X[1], output, 12 );

    return( 0 );
}