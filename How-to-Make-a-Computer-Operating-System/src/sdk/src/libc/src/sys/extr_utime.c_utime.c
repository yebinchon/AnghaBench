
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int actime; int modtime; } ;


 int SYS_utime ;
 int errno ;
 int syscall2 (int ,int,int) ;
 int time (int *) ;

int utime( const char* filename, const struct utimbuf* times ) {
    int error;
    struct utimbuf current;

    if ( times == ((void*)0) ) {
        current.actime = time( ((void*)0) );
        current.modtime = current.actime;

        times = ( const struct utimbuf* )&current;
    }

    error = syscall2( SYS_utime, ( int )filename, ( int )times );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
