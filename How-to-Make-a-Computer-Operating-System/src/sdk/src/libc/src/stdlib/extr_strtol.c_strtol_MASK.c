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
 unsigned long ABS_LONG_MIN ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 unsigned long FUNC2 (char const*,char**,int) ; 

long int FUNC3( const char* nptr, char** endptr, int base ) {
    int neg = 0;
    unsigned long int v;
    const char* orig = nptr;

    while ( FUNC1( *nptr ) ) {
        nptr++;
    }

    if ( ( *nptr == '-' ) && ( FUNC0( nptr[ 1 ] ) ) ) {
        neg = -1;
        ++nptr;
    }

    v = FUNC2( nptr, endptr, base );

    if ( ( endptr ) && ( *endptr == nptr) ) {
        *endptr = ( char* )orig;
    }

    if ( v >= ABS_LONG_MIN ) {
        if ( ( v == ABS_LONG_MIN ) && ( neg ) ) {
            return v;
        }

        return ( neg ? LONG_MIN : LONG_MAX );
    }

    return ( neg ? -v : v );
}