
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* color_seed ;

__attribute__((used)) static void
reseed(void)
{
   color_seed[0] = 0x12345678U;
   color_seed[1] = 0x9abcdefU;
}
