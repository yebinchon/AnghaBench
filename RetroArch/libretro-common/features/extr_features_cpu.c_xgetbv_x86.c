
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int _xgetbv (int) ;
 int printf (char*) ;

__attribute__((used)) static uint64_t xgetbv_x86(uint32_t idx)
{

   uint32_t eax, edx;
   __asm__ volatile (




         ".byte 0x0f, 0x01, 0xd0\n"
         : "=a"(eax), "=d"(edx) : "c"(idx));
   return ((uint64_t)edx << 32) | eax;







}
