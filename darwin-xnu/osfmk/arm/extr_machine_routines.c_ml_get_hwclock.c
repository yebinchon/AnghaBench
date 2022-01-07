
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ISB_SY ;
 int __builtin_arm_isb (int ) ;
 int __builtin_arm_mrrc (int,int ,int) ;

uint64_t
ml_get_hwclock(void)
{
 uint64_t high_first = 0;
 uint64_t high_second = 0;
 uint64_t low = 0;

 __builtin_arm_isb(ISB_SY);

 do {
  high_first = __builtin_arm_mrrc(15, 0, 14) >> 32;
  low = __builtin_arm_mrrc(15, 0, 14) & 0xFFFFFFFFULL;
  high_second = __builtin_arm_mrrc(15, 0, 14) >> 32;
 } while (high_first != high_second);

 return (high_first << 32) | (low);
}
