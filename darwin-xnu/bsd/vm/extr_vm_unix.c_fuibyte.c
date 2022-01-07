
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;


 scalar_t__ copyin (int ,void*,int) ;

int fuibyte(user_addr_t addr)
{
 unsigned char byte;

 if (copyin(addr, (void *) &(byte), sizeof(char)))
  return(-1);
 return(byte);
}
