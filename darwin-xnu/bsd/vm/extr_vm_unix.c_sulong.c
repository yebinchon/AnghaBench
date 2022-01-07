
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int user_addr_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ IS_64BIT_PROCESS (int ) ;
 scalar_t__ copyout (void*,int ,int) ;
 int current_proc () ;
 int suiword (int ,long) ;

int
sulong(user_addr_t addr, int64_t word)
{

 if (IS_64BIT_PROCESS(current_proc())) {
  return(copyout((void *)&word, addr, sizeof(word)) == 0 ? 0 : -1);
 } else {
  return(suiword(addr, (long)word));
 }
}
