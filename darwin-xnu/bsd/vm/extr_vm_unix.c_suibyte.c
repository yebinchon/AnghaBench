
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;


 scalar_t__ copyout (void*,int ,int) ;

int
suibyte(
 user_addr_t addr,
 int byte)
{
 char character;

 character = (char)byte;
 return (copyout((void *)&(character), addr, sizeof(char)) == 0 ? 0 : -1);
}
