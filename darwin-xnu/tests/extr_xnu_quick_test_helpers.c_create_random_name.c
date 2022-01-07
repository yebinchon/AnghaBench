
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


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
 int T_ASSERT_LT_ULONG (scalar_t__,unsigned long,char*) ;
 int T_EXPECT_TRUE (int,char*,...) ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char*,int,int) ;
 int rand () ;
 int sprintf (char*,char*,int) ;
 int stat (char*,struct stat*) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;

int create_random_name( char *the_pathp, int do_open ) {
    int i, my_err;
    int my_fd = -1;

    for ( i = 0; i < 1; i++ ) {
        int my_rand;
        char *myp;
        char my_name[32];

        my_rand = rand( );
        sprintf( &my_name[0], "%d", my_rand );
        T_ASSERT_LT_ULONG((strlen( &my_name[0] ) + strlen( the_pathp ) + 2), (unsigned long)PATH_MAX,
            "check if path to test file is less than PATH_MAX");


        myp = strrchr( the_pathp, '/' );
        *(myp + 1) = 0x00;
        strcat( the_pathp, &my_name[0] );
        if ( do_open ) {

            my_fd = open( the_pathp, (O_RDWR | O_CREAT | O_EXCL),
                            (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH) );
            T_EXPECT_TRUE((my_fd != -1 || errno == EEXIST), "open file with name %s", the_pathp);

            if( errno == EEXIST )
                continue;
        }
        else {

            struct stat my_sb;
            my_err = stat( the_pathp, &my_sb );
            T_EXPECT_TRUE((my_err == 0 || errno == ENOENT), "make sure the name is unique");

            if(errno == ENOENT) break;

            i--;
            continue;
        }
    }

    if ( my_fd != -1 )
        close( my_fd );

    if(do_open && my_fd == -1)
        return 1;

    return 0;
}
