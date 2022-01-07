
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _xgetbv (int ) ;

__attribute__((used)) static uint32_t
cpu_xgetbv_x86(void)
{



 uint32_t lo, hi;
 __asm__ volatile (".byte 0x0f, 0x01, 0xd0" : "=a"(lo), "=d"(hi) : "c" (0));
 return lo;



}
