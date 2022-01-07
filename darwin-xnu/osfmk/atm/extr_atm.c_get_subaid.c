
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_atm_subaid_t ;
typedef int SInt64 ;


 scalar_t__ OSIncrementAtomic64 (int *) ;
 int global_subaid ;

__attribute__((used)) static mach_atm_subaid_t
get_subaid()
{
 mach_atm_subaid_t next_subaid;
 next_subaid = (mach_atm_subaid_t)OSIncrementAtomic64((SInt64 *)&global_subaid);
 return next_subaid;
}
