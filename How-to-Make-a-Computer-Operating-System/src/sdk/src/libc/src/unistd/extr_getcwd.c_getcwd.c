
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct dirent {char* d_name; scalar_t__ d_ino; } ;
typedef scalar_t__ ino_t ;
typedef int dots ;
typedef scalar_t__ dev_t ;
typedef int DIR ;


 int MAX (size_t,size_t) ;
 int PATH_MAX ;
 int _D_ALLOC_NAMLEN (struct dirent*) ;
 size_t _D_EXACT_NAMLEN (struct dirent*) ;
 int closedir (int *) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,int) ;
 void* mempcpy (char*,char const*,int) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 char* realloc (char*,size_t) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcpy (char*,char*) ;

char* getcwd( char* buf, size_t size ) {
    static const char dots[] = "../../../../../../../../../../../../../../../../../../../../../../../        ../../../../../../../../../../../../../../../../../../../../../../../../../../        ../../../../../../../../../../../../../../../../../../../../../../../../../..";


    const char* dotp = &dots[ sizeof( dots ) ];
    const char* dotlist = dots;
    size_t dotsize = sizeof( dots ) - 1;
    dev_t rootdev, thisdev;
    ino_t rootino, thisino;
    char* path;
    register char* pathp;
    struct stat st;
    size_t allocated = size;

    if ( size == 0 ) {
        if ( buf != ((void*)0) ) {
            return ((void*)0);
        }

        allocated = PATH_MAX + 1;
    }

    if ( buf != ((void*)0) ) {
        path = buf;
    } else {
        path = malloc( allocated );

        if ( path == ((void*)0) ) {
            return ((void*)0);
        }
    }

    pathp = path + allocated;
    *--pathp = '\0';

    if ( stat( ".", &st ) < 0 ) {
        goto lose2;
    }

    thisdev = st.st_dev;
    thisino = st.st_ino;

    if ( stat( "/", &st ) < 0 ) {
        goto lose2;
    }

    rootdev = st.st_dev;
    rootino = st.st_ino;

    while ( !( thisdev == rootdev && thisino == rootino ) ) {
        register DIR *dirstream;
        struct dirent* d;
        dev_t dotdev;
        ino_t dotino;
        char mount_point;



        if ( dotp == dotlist ) {


            char* new;

            if ( dotlist == dots ) {
                new = malloc( dotsize * 2 + 1 );

                if ( new == ((void*)0) ) {
                    goto lose;
                }




                memcpy( new, dots, dotsize );
                dotp = &new[ dotsize ];

            } else {
                new = realloc( ( void* )dotlist, dotsize * 2 + 1 );

                if ( new == ((void*)0) ) {
                    goto lose;
                }

                dotp = &new[ dotsize ];
            }




            memcpy( ( char* )dotp, new, dotsize );
            dotsize *= 2;
            new[ dotsize ] = '\0';

            dotlist = new;
        }

        dotp -= 3;



        if ( stat( dotp, &st ) < 0 ) {
            goto lose;
        }

        dotdev = st.st_dev;
        dotino = st.st_ino;
        mount_point = dotdev != thisdev;



        dirstream = opendir( dotp );

        if ( dirstream == ((void*)0) ) {
            goto lose;
        }

        while ( ( d = readdir( dirstream ) ) != ((void*)0) ) {
            if ( d->d_name[ 0 ] == '.' &&
                 ( d->d_name[ 1 ] == '\0' || (d->d_name[ 1 ] == '.' && d->d_name[ 2 ] == '\0' ) ) ) {
                continue;
            }

            if ( mount_point || ( ino_t )d->d_ino == thisino ) {
                char name[ dotlist + dotsize - dotp + 1 + _D_ALLOC_NAMLEN( d ) ];






                memcpy( name, dotp, dotlist + dotsize - dotp );
                name[ dotlist + dotsize - dotp ] = '/';
                strcpy( &name[ dotlist + dotsize - dotp + 1 ], d->d_name );
                if ( stat( name, &st ) >= 0 &&
                     st.st_dev == thisdev && st.st_ino == thisino ) {
                    break;
                }
            }
        }

        if ( d == ((void*)0) ) {
            ( void )closedir( dirstream );

            goto lose;
        } else {
            size_t namlen = _D_EXACT_NAMLEN( d );

            if ( ( size_t )( pathp - path ) <= namlen ) {
                if (size != 0) {
                    ( void )closedir( dirstream );
                    goto lose;
                } else {
                    char* tmp;
                    size_t oldsize = allocated;

                    allocated = 2 * MAX( allocated, namlen );
                    tmp = realloc( path, allocated );

                    if ( tmp == ((void*)0) ) {
                        ( void )closedir( dirstream );
                        goto lose;
                    }




                    pathp = memcpy(
                        tmp + allocated - ( path + oldsize - pathp ),
                        tmp + ( pathp - path ),
                        path + oldsize - pathp
                    );

                    path = tmp;
                }
            }

            pathp -= namlen;
            ( void )memcpy( pathp, d->d_name, namlen );
            *--pathp = '/';
            ( void )closedir( dirstream );
        }

        thisdev = dotdev;
        thisino = dotino;
    }

    if ( pathp == &path[ allocated - 1 ] ) {
        *--pathp = '/';
    }

    if ( dotlist != dots ) {
        free( ( void* )dotlist );
    }

    memmove( path, pathp, path + allocated - pathp );

    return path;

lose:
    if ( dotlist != dots ) {
        free( ( void* )dotlist );
    }

lose2:
    if ( buf == ((void*)0) ) {
        free( path );
    }

    return ((void*)0);
}
