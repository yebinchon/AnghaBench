
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ rdseed_step (int *) ;

__attribute__((used)) static int
rdseed_retry(uint64_t * seed, size_t nretries)
{
 size_t i;

 for (i = 0; i < nretries; i += 1) {
  if (rdseed_step(seed)) {
   return 1;
  } else {
   asm volatile("pause");
  }
 }

 return 0;
}
