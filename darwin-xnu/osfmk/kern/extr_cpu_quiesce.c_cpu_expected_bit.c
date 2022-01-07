
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long checkin_mask_t ;



__attribute__((used)) static inline checkin_mask_t
cpu_expected_bit(int cpuid)
{
 return 1UL << (2 * cpuid + 1);
}
