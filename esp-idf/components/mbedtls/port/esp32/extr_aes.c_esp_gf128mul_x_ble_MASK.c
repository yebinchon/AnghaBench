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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2( unsigned char r[16],
                                    const unsigned char x[16] )
{
    uint64_t a, b, ra, rb;

    FUNC0( a, x, 0 );
    FUNC0( b, x, 8 );

    ra = ( a << 1 )  ^ 0x0087 >> ( 8 - ( ( b >> 63 ) << 3 ) );
    rb = ( a >> 63 ) | ( b << 1 );

    FUNC1( ra, r, 0 );
    FUNC1( rb, r, 8 );
}