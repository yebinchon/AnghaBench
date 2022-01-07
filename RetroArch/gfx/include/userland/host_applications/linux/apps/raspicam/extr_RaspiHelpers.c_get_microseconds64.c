
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC_RAW ;
 int clock_gettime (int ,struct timespec*) ;

uint64_t get_microseconds64()
{
   struct timespec spec;
   uint64_t us;

   clock_gettime(CLOCK_MONOTONIC_RAW, &spec);

   us = spec.tv_sec * 1000000;
   us += spec.tv_nsec / 1000;

   return us;
}
