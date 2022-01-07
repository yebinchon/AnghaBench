
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;


 scalar_t__ copyin (int ,void*,int) ;

long fuiword(user_addr_t addr)
{
 long word = 0;

 if (copyin(addr, (void *) &word, sizeof(int)))
  return(-1);
 return(word);
}
