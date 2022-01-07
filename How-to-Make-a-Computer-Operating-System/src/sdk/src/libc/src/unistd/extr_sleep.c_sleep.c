
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;


 int SYS_sleep_thread ;
 int syscall2 (int ,int,int) ;

unsigned int sleep( unsigned int seconds ) {
    uint64_t time;

    time = seconds * 1000000;

    syscall2( SYS_sleep_thread, ( int )&time, ( int )((void*)0) );

    return 0;
}
