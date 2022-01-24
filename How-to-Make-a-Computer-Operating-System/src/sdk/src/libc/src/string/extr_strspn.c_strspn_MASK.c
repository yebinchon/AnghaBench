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
 int FUNC0 (char const*) ; 

size_t FUNC1( const char* s, const char* accept ) {
    size_t l = 0;
    int a = 1;
    int i;
    int al = FUNC0( accept );

    while( ( a ) && ( *s ) )    {
        for ( a = i = 0; ( !a ) && ( i < al ); i++ ) {
            if ( *s == accept[ i ] ) {
                a = 1;
            }
        }

        if ( a ) {
            l++;
        }

        s++;
    }

    return l;
}