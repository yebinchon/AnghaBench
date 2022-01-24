#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                            const mbedtls_ecp_point T[], unsigned char t_len,
                            unsigned char i )
{
    int ret;
    unsigned char ii, j;

    /* Ignore the "sign" bit and scale down */
    ii =  ( i & 0x7Fu ) >> 1;

    /* Read the whole table to thwart cache-based timing attacks */
    for( j = 0; j < t_len; j++ )
    {
        FUNC0( FUNC2( &R->X, &T[j].X, j == ii ) );
        FUNC0( FUNC2( &R->Y, &T[j].Y, j == ii ) );
    }

    /* Safely invert result if i is "negative" */
    FUNC0( FUNC1( grp, R, i >> 7 ) );

cleanup:
    return( ret );
}