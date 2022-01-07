
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ mach_absolutetime_asleep ;

uint64_t
absolutetime_to_continuoustime(uint64_t abstime) {
 return abstime + mach_absolutetime_asleep;
}
