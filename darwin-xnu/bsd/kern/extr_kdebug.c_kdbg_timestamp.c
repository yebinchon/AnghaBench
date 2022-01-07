
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ kdbg_continuous_time ;
 int mach_absolute_time () ;
 int mach_continuous_time () ;

__attribute__((used)) static inline uint64_t
kdbg_timestamp(void)
{
 if (kdbg_continuous_time) {
  return mach_continuous_time();
 } else {
  return mach_absolute_time();
 }
}
