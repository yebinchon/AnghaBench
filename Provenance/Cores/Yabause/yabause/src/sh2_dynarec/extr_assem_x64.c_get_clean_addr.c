
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
  if(ptr[0]==0xB8) {
    assert(ptr[21]==0xE8);
    if(ptr[26]==0xE9) return *(s32 *)(ptr+27)+addr+31;
    else return(addr+26);
  }

  assert(ptr[26]==0xE8);
  if(ptr[31]==0xE9) return *(s32 *)(ptr+32)+addr+36;
  else return(addr+31);
}
