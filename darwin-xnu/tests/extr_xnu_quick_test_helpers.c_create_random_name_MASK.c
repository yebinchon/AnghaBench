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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 scalar_t__ PATH_MAX ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (char*,int,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 

int FUNC10( char *the_pathp, int do_open ) {
    int     i, my_err;
    int     my_fd = -1;
    
    for ( i = 0; i < 1; i++ ) {
        int         my_rand;
        char        *myp;
        char        my_name[32];
        
        my_rand = FUNC4( );
        FUNC5( &my_name[0], "%d", my_rand );
        FUNC0((FUNC8( &my_name[0] ) + FUNC8( the_pathp ) + 2), (unsigned long)PATH_MAX,
            "check if path to test file is less than PATH_MAX");

        // append generated file name onto our path
        myp = FUNC9( the_pathp, '/' );
        *(myp + 1) = 0x00;
        FUNC7( the_pathp, &my_name[0] );
        if ( do_open ) {
            /* create a file with this name */
            my_fd = FUNC3( the_pathp, (O_RDWR | O_CREAT | O_EXCL),
                            (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH) );
            FUNC1((my_fd != -1 || errno == EEXIST), "open file with name %s", the_pathp);
            
            if( errno == EEXIST )
                continue;
        }
        else {
            /* make sure the name is unique */
            struct stat     my_sb;
            my_err = FUNC6( the_pathp, &my_sb );
            FUNC1((my_err == 0 || errno == ENOENT), "make sure the name is unique");
            
            if(errno == ENOENT) break;
            /* name already exists, try another */
            i--;
            continue;
        }
    }
    
    if ( my_fd != -1 )
        FUNC2( my_fd );

    if(do_open && my_fd == -1)
        return 1;

    return 0;
}