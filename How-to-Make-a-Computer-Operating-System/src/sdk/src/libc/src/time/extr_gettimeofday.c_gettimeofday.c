
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timezone {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;


 int SYS_get_system_time ;
 int syscall1 (int ,int) ;

int gettimeofday( struct timeval* tv, struct timezone* tz ) {
    int ret;
    uint64_t time;

    ret = syscall1( SYS_get_system_time, ( int )&time );

    if ( ret >= 0 ) {
        if ( tv != ((void*)0) ) {
            tv->tv_sec = time / 1000000;
            tv->tv_usec = time % 1000000;
        }
    }

    return ret;
}
