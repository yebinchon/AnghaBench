
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ random () ;

uint64_t
get_random_sleep_length_abs_ns(uint64_t min_sleep_ns, uint64_t max_sleep_ns)
{
 uint64_t tmp;

 tmp = (uint32_t)random();
 tmp <<= 32;
 tmp |= (uint32_t)random();


 tmp %= (max_sleep_ns - min_sleep_ns);

 return min_sleep_ns + tmp;
}
