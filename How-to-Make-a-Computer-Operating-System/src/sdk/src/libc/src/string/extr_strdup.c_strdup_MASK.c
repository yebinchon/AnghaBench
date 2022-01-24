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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

char* FUNC3( const char* s ) {
    char* s2;
    size_t length;

    length = FUNC2( s );
    s2 = ( char* )FUNC0( length + 1 );

    if ( s2 == NULL ) {
        return NULL;
    }

    FUNC1( s2, s, length + 1 );

    return s2;
}