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
typedef  int /*<<< orphan*/  tmp_exec ;

/* Variables and functions */
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC0 (char const*,char* const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*) ; 
 char* FUNC4 (char*,char) ; 
 size_t FUNC5 (char*) ; 

int FUNC6( const char* filename, char* const argv[] ) {
    char* path;
    char* separator;
    char tmp_path[ 128 ];
    char tmp_exec[ 128 ];

    FUNC0( filename, argv, environ );

    path = FUNC1( "PATH" );

    if ( path == NULL ) {
        return -1;
    }

    do {
        separator = FUNC4( path, ':' );

        if ( separator == NULL ) {
            FUNC2( tmp_path, path, FUNC5( path ) + 1 );
        } else {
            size_t length = ( separator - path );

            FUNC2( tmp_path, path, length );
            tmp_path[ length ] = 0;
        }

        FUNC3( tmp_exec, sizeof( tmp_exec ), "%s/%s", tmp_path, filename );
        FUNC0( tmp_exec, argv, environ );

        path = separator + 1;
    } while ( separator != NULL );

    return -1;
}