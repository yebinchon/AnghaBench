
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;


 int SYS_get_system_time ;
 int syscall1 (int ,int) ;

time_t time( time_t* t ) {
    int ret;
    uint64_t time;

    ret = syscall1( SYS_get_system_time, ( int )&time );

    if ( ret < 0 ) {
        time = 0;
    } else {
        time /= 1000000;
    }

    if ( t != ((void*)0) ) {
        *t = time;
    }

    return time;
}
