
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int simple_rand () ;

__attribute__((used)) static uint32_t simple_rand_uint32(void)
{
   uint32_t parts[3];
   parts[0] = simple_rand();
   parts[1] = simple_rand();
   parts[2] = simple_rand();
   return ((parts[0] << 30) +
           (parts[1] << 15) +
            parts[2]);
}
