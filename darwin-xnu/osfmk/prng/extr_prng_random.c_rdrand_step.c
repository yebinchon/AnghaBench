
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static int
rdrand_step(uint64_t * rand)
{
 uint8_t ok;

 asm volatile("rdrand %0; setc %1" : "=r"(*rand), "=qm"(ok));

 return (int)ok;
}
