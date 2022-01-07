
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int SYS_sleep_thread ;
 int errno ;
 int syscall2 (int ,int,int) ;

int nanosleep( const struct timespec* req, struct timespec* rem ) {
    int error;
    uint64_t microsecs;
    uint64_t remaining;

    microsecs = ( uint64_t )req->tv_sec * 1000000 + ( uint64_t )req->tv_nsec / 1000;

    if ( microsecs == 0 ) {
        microsecs = 1;
    }

    error = syscall2( SYS_sleep_thread, ( int )&microsecs, ( int )&remaining );

    if ( error < 0 ) {
        errno = -error;

        if ( rem != ((void*)0) ) {
            rem->tv_sec = remaining / 1000000;
            rem->tv_nsec = ( remaining % 1000000 ) * 1000;
        }

        return -1;
    }

    return 0;
}
