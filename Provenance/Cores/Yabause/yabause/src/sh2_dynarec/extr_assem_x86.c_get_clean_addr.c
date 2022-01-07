
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ s32 ;
typedef scalar_t__ pointer ;


 int assert (int) ;

pointer get_clean_addr(pointer addr)
{
  u8 *ptr=(u8 *)addr;
  assert(ptr[20]==0xE8);
  assert(ptr[25]==0x83);
  if(ptr[28]==0xE9) return *(s32 *)(ptr+29)+addr+33;
  else return(addr+28);
}
