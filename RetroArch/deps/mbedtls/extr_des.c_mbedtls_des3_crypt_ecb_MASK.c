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
struct TYPE_3__ {int /*<<< orphan*/ * sk; } ;
typedef  TYPE_1__ mbedtls_des3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC5( mbedtls_des3_context *ctx,
                     const unsigned char input[8],
                     unsigned char output[8] )
{
    int i;
    uint32_t X, Y, T, *SK;

    SK = ctx->sk;

    FUNC3( X, input, 0 );
    FUNC3( Y, input, 4 );

    FUNC1( X, Y );

    for( i = 0; i < 8; i++ )
    {
        FUNC2( Y, X );
        FUNC2( X, Y );
    }

    for( i = 0; i < 8; i++ )
    {
        FUNC2( X, Y );
        FUNC2( Y, X );
    }

    for( i = 0; i < 8; i++ )
    {
        FUNC2( Y, X );
        FUNC2( X, Y );
    }

    FUNC0( Y, X );

    FUNC4( Y, output, 0 );
    FUNC4( X, output, 4 );

    return( 0 );
}