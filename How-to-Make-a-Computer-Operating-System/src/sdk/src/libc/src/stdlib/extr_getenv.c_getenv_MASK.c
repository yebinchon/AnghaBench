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
 char** environ ; 
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,size_t) ; 

char* FUNC2( const char* name ) {
	return NULL;
	
    int i;
    size_t length;
    size_t name_length;

    name_length = FUNC0( name );

    for ( i = 0; environ[ i ] != NULL; i++ ) {
        length = FUNC0( environ[ i ] );

        if ( length < ( name_length + 1 ) ) {
            continue;
        }

        if ( ( FUNC1( environ[ i ], name, name_length ) == 0 ) &&
             ( environ[ i ][ name_length ] == '=' ) ) {
            return &environ[ i ][ name_length + 1 ];
        }
    }

    return NULL;
}