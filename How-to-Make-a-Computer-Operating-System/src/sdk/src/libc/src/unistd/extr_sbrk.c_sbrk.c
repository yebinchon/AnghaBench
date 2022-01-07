
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_sbrk ;
 scalar_t__ syscall1 (int ,int) ;

void* sbrk( int increment ) {
    return ( void* )syscall1( SYS_sbrk, increment );
}
