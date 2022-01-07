
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int ulongword ;
typedef unsigned long long uint64_t ;


 scalar_t__ IS_64BIT_PROCESS (int ) ;
 scalar_t__ copyin (int ,void*,int) ;
 int current_proc () ;
 scalar_t__ fuiword (int ) ;

uint64_t
fuulong(user_addr_t addr)
{
 uint64_t ulongword;

 if (IS_64BIT_PROCESS(current_proc())) {
  if (copyin(addr, (void *)&ulongword, sizeof(ulongword)) != 0)
   return(-1ULL);
  return(ulongword);
 } else {
  return((uint64_t)fuiword(addr));
 }
}
