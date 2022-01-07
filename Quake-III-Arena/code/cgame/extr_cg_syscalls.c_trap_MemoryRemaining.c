
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_MEMORY_REMAINING ;
 int syscall (int ) ;

int trap_MemoryRemaining( void ) {
 return syscall( CG_MEMORY_REMAINING );
}
