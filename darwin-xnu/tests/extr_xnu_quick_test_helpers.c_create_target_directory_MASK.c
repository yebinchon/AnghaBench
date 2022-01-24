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
 int EEXIST ; 
 int PATH_MAX ; 
 int S_IROTH ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,unsigned long,char*,char const*,...) ; 
 int errno ; 
 char* g_target_path ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 size_t FUNC8 (char const*) ; 

void FUNC9( const char * the_targetp )
{
    int             err;
    const char *    my_targetp;

    my_targetp = FUNC2("TMPDIR");
    if ( my_targetp == NULL )
        my_targetp = "/tmp";

    FUNC1( FUNC8( the_targetp ), (unsigned long)( PATH_MAX - 1 ),
        "check target path too long - \"%s\"", the_targetp );

    for ( ;; ) {
        int         my_rand;
        char        my_name[64];
        
        my_rand = FUNC4( );
        FUNC5( &my_name[0], "xnu_quick_test-%d", my_rand );
        FUNC1( FUNC8( &my_name[0] ) + FUNC8( the_targetp ) + 2, (unsigned long)PATH_MAX,
            "check target path plus our test directory name is too long: "
            "target path - \"%s\" test directory name - \"%s\"",
            the_targetp, &my_name[0] );

        /* append generated directory name onto our path */
        g_target_path[0] = 0x00;
        FUNC6( &g_target_path[0], the_targetp );
        if ( g_target_path[ (FUNC8(the_targetp) - 1) ] != '/' ) {
            FUNC6( &g_target_path[0], "/" );
        }
        FUNC6( &g_target_path[0], &my_name[0] );
        
        /* try to create the test directory */
        err = FUNC3( &g_target_path[0], (S_IRWXU | S_IRWXG | S_IROTH) );
        if ( err == 0 ) {
            break;
        }
        err = errno;
        if ( EEXIST != err ) {
            FUNC0( "test directory creation failed - \"%s\" \n"
                "mkdir call failed with error %d - \"%s\"", 
                &g_target_path[0], errno, FUNC7( err) );
        }
    }

}