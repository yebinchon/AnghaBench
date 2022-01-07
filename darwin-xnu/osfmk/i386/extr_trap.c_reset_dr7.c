
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
reset_dr7(void)
{
 long dr7 = 0x400;
 __asm__ volatile("mov %0,%%dr7" : : "r" (dr7));
}
