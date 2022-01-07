
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_MEMORY_REMAINING ;
 int syscall (int ) ;

int trap_MemoryRemaining( void ) {
 return syscall( UI_MEMORY_REMAINING );
}
