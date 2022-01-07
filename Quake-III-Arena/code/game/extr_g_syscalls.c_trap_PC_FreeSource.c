
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_PC_FREE_SOURCE ;
 int syscall (int ,int) ;

int trap_PC_FreeSource( int handle ) {
 return syscall( BOTLIB_PC_FREE_SOURCE, handle );
}
