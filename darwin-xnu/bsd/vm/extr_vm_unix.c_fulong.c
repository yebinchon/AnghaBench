
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int longword ;
typedef int int64_t ;


 scalar_t__ IS_64BIT_PROCESS (int ) ;
 scalar_t__ copyin (int ,void*,int) ;
 int current_proc () ;
 scalar_t__ fuiword (int ) ;

int64_t
fulong(user_addr_t addr)
{
 int64_t longword;

 if (IS_64BIT_PROCESS(current_proc())) {
  if (copyin(addr, (void *)&longword, sizeof(longword)) != 0)
   return(-1);
  return(longword);
 } else {
  return((int64_t)fuiword(addr));
 }
}
