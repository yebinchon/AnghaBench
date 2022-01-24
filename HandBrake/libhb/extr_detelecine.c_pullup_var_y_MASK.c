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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 

__attribute__((used)) static int FUNC1( unsigned char * a, unsigned char * b, int s )
{
    int i, j, var = 0;
    for( i = 3; i; i-- )
    {
        for( j = 0; j < 8; j++ )
        {
            var += FUNC0( a[j]-a[j+s] );
        }
        a+=s; b+=s;
    }
    return 4*var;
}