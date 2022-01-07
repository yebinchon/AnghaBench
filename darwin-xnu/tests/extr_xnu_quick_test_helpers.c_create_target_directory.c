
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int PATH_MAX ;
 int S_IROTH ;
 int S_IRWXG ;
 int S_IRWXU ;
 int T_ASSERT_FAIL (char*,char*,int,int ) ;
 int T_ASSERT_LT (size_t,unsigned long,char*,char const*,...) ;
 int errno ;
 char* g_target_path ;
 char* getenv (char*) ;
 int mkdir (char*,int) ;
 int rand () ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char const*) ;
 int strerror (int) ;
 size_t strlen (char const*) ;

void create_target_directory( const char * the_targetp )
{
    int err;
    const char * my_targetp;

    my_targetp = getenv("TMPDIR");
    if ( my_targetp == ((void*)0) )
        my_targetp = "/tmp";

    T_ASSERT_LT( strlen( the_targetp ), (unsigned long)( PATH_MAX - 1 ),
        "check target path too long - \"%s\"", the_targetp );

    for ( ;; ) {
        int my_rand;
        char my_name[64];

        my_rand = rand( );
        sprintf( &my_name[0], "xnu_quick_test-%d", my_rand );
        T_ASSERT_LT( strlen( &my_name[0] ) + strlen( the_targetp ) + 2, (unsigned long)PATH_MAX,
            "check target path plus our test directory name is too long: "
            "target path - \"%s\" test directory name - \"%s\"",
            the_targetp, &my_name[0] );


        g_target_path[0] = 0x00;
        strcat( &g_target_path[0], the_targetp );
        if ( g_target_path[ (strlen(the_targetp) - 1) ] != '/' ) {
            strcat( &g_target_path[0], "/" );
        }
        strcat( &g_target_path[0], &my_name[0] );


        err = mkdir( &g_target_path[0], (S_IRWXU | S_IRWXG | S_IROTH) );
        if ( err == 0 ) {
            break;
        }
        err = errno;
        if ( EEXIST != err ) {
            T_ASSERT_FAIL( "test directory creation failed - \"%s\" \n"
                "mkdir call failed with error %d - \"%s\"",
                &g_target_path[0], errno, strerror( err) );
        }
    }

}
