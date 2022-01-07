
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static __inline__ u32 __lwp_priotocore(u32 prio)
{
 return (255 - prio);
}
