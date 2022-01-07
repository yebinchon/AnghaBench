
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ pointer ;



int isclean(pointer addr)
{
  u8 *ptr=(u8 *)addr;
  if(ptr[5]!=0xB8) return 1;
  if(ptr[10]!=0xBB) return 1;
  if(ptr[15]!=0xB9) return 1;
  if(ptr[20]!=0xE8) return 1;
  if(ptr[25]!=0x83) return 1;
  return 0;
}
