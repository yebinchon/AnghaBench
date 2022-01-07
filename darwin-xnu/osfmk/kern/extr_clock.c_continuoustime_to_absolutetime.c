
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ mach_absolutetime_asleep ;

uint64_t
continuoustime_to_absolutetime(uint64_t conttime) {
 if (conttime <= mach_absolutetime_asleep)
  return 0;
 else
  return conttime - mach_absolutetime_asleep;
}
