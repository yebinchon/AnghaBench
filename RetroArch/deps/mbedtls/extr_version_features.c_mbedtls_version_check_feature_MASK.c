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
 char** features ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 

int FUNC1( const char *feature )
{
    const char **idx = features;

    if( *idx == NULL )
        return( -2 );

    if( feature == NULL )
        return( -1 );

    while( *idx != NULL )
    {
        if( !FUNC0( *idx, feature ) )
            return( 0 );
        idx++;
    }
    return( -1 );
}