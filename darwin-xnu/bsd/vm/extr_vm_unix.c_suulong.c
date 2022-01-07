
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uword ;
typedef int user_addr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 scalar_t__ IS_64BIT_PROCESS (int ) ;
 scalar_t__ copyout (void*,int ,int) ;
 int current_proc () ;
 int suiword (int ,int ) ;

int
suulong(user_addr_t addr, uint64_t uword)
{

 if (IS_64BIT_PROCESS(current_proc())) {
  return(copyout((void *)&uword, addr, sizeof(uword)) == 0 ? 0 : -1);
 } else {
  return(suiword(addr, (uint32_t)uword));
 }
}
