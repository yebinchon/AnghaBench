
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_rand_next ;

__attribute__((used)) static int simple_rand(void)
{
   simple_rand_next = simple_rand_next * 1103515245 + 12345;
   return((unsigned)(simple_rand_next/65536) % 32768);
}
