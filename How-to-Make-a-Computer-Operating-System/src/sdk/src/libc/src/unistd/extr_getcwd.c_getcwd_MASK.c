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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct dirent {char* d_name; scalar_t__ d_ino; } ;
typedef  scalar_t__ ino_t ;
typedef  int /*<<< orphan*/  dots ;
typedef  scalar_t__ dev_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FUNC0 (size_t,size_t) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct dirent*) ; 
 size_t FUNC2 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 char* FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 void* FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,size_t) ; 
 scalar_t__ FUNC12 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

char* FUNC14( char* buf, size_t size ) {
    static const char dots[] = "../../../../../../../../../../../../../../../../../../../../../../../\
        ../../../../../../../../../../../../../../../../../../../../../../../../../../\
        ../../../../../../../../../../../../../../../../../../../../../../../../../..";
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
        if ( buf != NULL ) {
            return NULL;
        }

        allocated = PATH_MAX + 1;
    }

    if ( buf != NULL ) {
        path = buf;
    } else {
        path = FUNC5( allocated );

        if ( path == NULL ) {
            return NULL;
        }
    }

    pathp = path + allocated;
    *--pathp = '\0';

    if ( FUNC12( ".", &st ) < 0 ) {
        goto lose2;
    }

    thisdev = st.st_dev;
    thisino = st.st_ino;

    if ( FUNC12( "/", &st ) < 0 ) {
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

        /* Look at the parent directory.  */

        if ( dotp == dotlist ) {
            /* My, what a deep directory tree you have, Grandma.  */

            char* new;

            if ( dotlist == dots ) {
                new = FUNC5( dotsize * 2 + 1 );

                if ( new == NULL ) {
                    goto lose;
                }

#ifdef HAVE_MEMPCPY
                dotp = mempcpy( new, dots, dotsize );
#else
                FUNC6( new, dots, dotsize );
                dotp = &new[ dotsize ];
#endif
            } else {
                new = FUNC11( ( void* )dotlist, dotsize * 2 + 1 );

                if ( new == NULL ) {
                    goto lose;
                }

                dotp = &new[ dotsize ];
            }
#ifdef HAVE_MEMPCPY
            *( ( char* )mempcpy( ( char* )dotp, new, dotsize ) ) = '\0';
            dotsize *= 2;
#else
            FUNC6( ( char* )dotp, new, dotsize );
            dotsize *= 2;
            new[ dotsize ] = '\0';
#endif
            dotlist = new;
        }

        dotp -= 3;

        /* Figure out if this directory is a mount point. */

        if ( FUNC12( dotp, &st ) < 0 ) {
            goto lose;
        }

        dotdev = st.st_dev;
        dotino = st.st_ino;
        mount_point = dotdev != thisdev;

        /* Search for the last directory. */

        dirstream = FUNC9( dotp );

        if ( dirstream == NULL ) {
            goto lose;
        }

        while ( ( d = FUNC10( dirstream ) ) != NULL ) {
            if ( d->d_name[ 0 ] == '.' &&
                 ( d->d_name[ 1 ] == '\0' || (d->d_name[ 1 ] == '.' && d->d_name[ 2 ] == '\0' ) ) ) {
                continue;
            }

            if ( mount_point || ( ino_t )d->d_ino == thisino ) {
                char name[ dotlist + dotsize - dotp + 1 + FUNC1( d ) ];

#ifdef HAVE_MEMPCPY
                char *tmp = mempcpy( name, dotp, dotlist + dotsize - dotp );
                *tmp++ = '/';
                strcpy( tmp, d->d_name );
#else
                FUNC6( name, dotp, dotlist + dotsize - dotp );
                name[ dotlist + dotsize - dotp ] = '/';
                FUNC13( &name[ dotlist + dotsize - dotp + 1 ], d->d_name );
#endif

                /* We don't fail here if we cannot stat() a directory entry.
                   This can happen when (network) filesystems fail.  If this
                   entry is in fact the one we are looking for we will find
                   out soon as we reach the end of the directory without
                   having found anything.  */

                if ( FUNC12( name, &st ) >= 0 &&
                     st.st_dev == thisdev && st.st_ino == thisino ) {
                    break;
                }
            }
        }

        if ( d == NULL ) {
            ( void )FUNC3( dirstream );

            goto lose;
        } else {
            size_t namlen = FUNC2( d );

            if ( ( size_t )( pathp - path ) <= namlen ) {
                if (size != 0) {
                    ( void )FUNC3( dirstream );
                    goto lose;
                } else {
                    char* tmp;
                    size_t oldsize = allocated;

                    allocated = 2 * FUNC0( allocated, namlen );
                    tmp = FUNC11( path, allocated );

                    if ( tmp == NULL ) {
                        ( void )FUNC3( dirstream );
                        goto lose;
                    }

                    /* Move current contents up to the end of the buffer.
                       This is guaranteed to be non-overlapping.  */

                    pathp = FUNC6(
                        tmp + allocated - ( path + oldsize - pathp ),
                        tmp + ( pathp - path ),
                        path + oldsize - pathp
                    );

                    path = tmp;
                }
            }

            pathp -= namlen;
            ( void )FUNC6( pathp, d->d_name, namlen );
            *--pathp = '/';
            ( void )FUNC3( dirstream );
        }

        thisdev = dotdev;
        thisino = dotino;
    }

    if ( pathp == &path[ allocated - 1 ] ) {
        *--pathp = '/';
    }

    if ( dotlist != dots ) {
        FUNC4( ( void* )dotlist );
    }

    FUNC7( path, pathp, path + allocated - pathp );

    return path;

lose:
    if ( dotlist != dots ) {
        FUNC4( ( void* )dotlist );
    }

lose2:
    if ( buf == NULL ) {
        FUNC4( path );
    }

    return NULL;
}