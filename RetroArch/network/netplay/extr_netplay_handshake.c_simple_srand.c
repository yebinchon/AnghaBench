
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int simple_rand_next ;

__attribute__((used)) static void simple_srand(unsigned int seed)
{
   simple_rand_next = seed;
}
