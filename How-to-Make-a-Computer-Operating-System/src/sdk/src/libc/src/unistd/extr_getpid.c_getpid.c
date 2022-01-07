
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SYS_getpid ;
 int syscall0 (int ) ;

pid_t getpid( void ) {
    return syscall0( SYS_getpid );
}
