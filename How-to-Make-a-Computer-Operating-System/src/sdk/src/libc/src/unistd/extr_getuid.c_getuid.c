
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int SYS_getuid ;
 int syscall0 (int ) ;

uid_t getuid( void ) {
 return syscall0( SYS_getuid );
}
