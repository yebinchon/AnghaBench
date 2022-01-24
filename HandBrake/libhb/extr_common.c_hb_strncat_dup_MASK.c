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
 scalar_t__ FUNC0 (scalar_t__,size_t) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

char * FUNC5( const char * s1, const char * s2, size_t n )
{
    size_t len;
    char * str;

    len = 0;
    if( s1 )
        len += FUNC3( s1 );
    if( s2 )
        len += FUNC0( FUNC3( s2 ), n );
    if( !len )
        return NULL;

    str = FUNC1( len + 1 );
    if( !str )
        return NULL;

    if( s1 )
        FUNC2( str, s1 );
    else
        FUNC2( str, "" );

    if (s2)
    {
        FUNC4( str, s2, n );
    }

    return str;
}