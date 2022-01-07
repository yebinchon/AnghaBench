
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



int syscall5( int number, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5 ){
 int ret;
 asm volatile ("			   		mov %1, %%eax		\n 		mov %2, %%ebx		\n 		mov %3, %%ecx		\n 		mov %4, %%edx		\n 		mov %5, %%edi		\n 		mov %6, %%esi		\n 		int $0x80		\n 		mov %%eax, %0"
  : "=g" (ret)
  : "g" (number),"g" (p1), "g" (p2), "g" (p3), "g" (p4), "g" (p5)
 );
 return ret;
}
