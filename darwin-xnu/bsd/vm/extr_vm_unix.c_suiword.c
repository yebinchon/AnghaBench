
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;


 scalar_t__ copyout (void*,int ,int) ;

int
suiword(
 user_addr_t addr,
 long word)
{
 return (copyout((void *) &word, addr, sizeof(int)) == 0 ? 0 : -1);
}
