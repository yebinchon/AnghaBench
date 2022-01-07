
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ rdrand_step (int *) ;

__attribute__((used)) static int
rdrand_retry(uint64_t * rand, size_t nretries)
{
 size_t i;

 for (i = 0; i < nretries; i += 1) {
  if (rdrand_step(rand)) {
   return 1;
  }
 }

 return 0;
}
