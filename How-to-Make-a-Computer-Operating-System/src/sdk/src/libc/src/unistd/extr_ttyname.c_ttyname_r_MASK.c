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
struct stat {scalar_t__ st_ino; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (int,struct dirent*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*) ; 

int FUNC5( int fd, char* buf, size_t buflen ) {
    int dir;
    int error;
    int found;

    struct stat st;
    struct dirent entry;

    error = FUNC1( fd, &st );

    if ( error < 0 ) {
        return -1;
    }

    dir = FUNC3( "/device/terminal", O_RDONLY );

    if ( dir < 0 ) {
        return -1;
    }

    found = 0;

    while ( FUNC2( dir, &entry, sizeof( struct dirent ) ) == 1 ) {
        if ( entry.d_ino == st.st_ino ) {
            FUNC4( buf, buflen, "/device/terminal/%s", entry.d_name );
            found = 1;
            break;
        }
    }

    FUNC0( dir );

    if ( !found ) {
        return -1;
    }

    return 0;
}