
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __attribute__((noinline)) void spend_cycles(int c)
{
 asm volatile(
  "0: subs %0, %0, #1 ;"
  "bgt 0b"
  : "=r" (c) : "0" (c) : "cc");
}
