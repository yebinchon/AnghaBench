
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; } ;
struct dirent {scalar_t__ d_ino; char* d_name; } ;


 int O_RDONLY ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int getdents (int,struct dirent*,int) ;
 int open (char*,int ) ;
 int snprintf (char*,size_t,char*,char*) ;

int ttyname_r( int fd, char* buf, size_t buflen ) {
    int dir;
    int error;
    int found;

    struct stat st;
    struct dirent entry;

    error = fstat( fd, &st );

    if ( error < 0 ) {
        return -1;
    }

    dir = open( "/device/terminal", O_RDONLY );

    if ( dir < 0 ) {
        return -1;
    }

    found = 0;

    while ( getdents( dir, &entry, sizeof( struct dirent ) ) == 1 ) {
        if ( entry.d_ino == st.st_ino ) {
            snprintf( buf, buflen, "/device/terminal/%s", entry.d_name );
            found = 1;
            break;
        }
    }

    close( dir );

    if ( !found ) {
        return -1;
    }

    return 0;
}
