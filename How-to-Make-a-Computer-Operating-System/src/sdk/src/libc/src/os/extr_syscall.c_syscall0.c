
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int syscall0( int number ){
 int ret;
 asm volatile ("		   		mov %1, %%eax	\n 		int $0x80		\n 		mov %%eax, %0"



  : "=g" (ret)
  : "g" (number)
 );
 return ret;
}
