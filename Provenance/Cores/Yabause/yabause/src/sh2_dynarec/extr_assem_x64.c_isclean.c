
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ pointer ;



int isclean(pointer addr)
{
  u8 *ptr=(u8 *)addr;
  if(ptr[0]==0xB8) {
    if(ptr[0]!=0xB8) return 1;
    if(ptr[5]!=0xBB) return 1;
    if(ptr[10]!=0xB9) return 1;
    if(ptr[15]!=0x41) return 1;
    if(ptr[16]!=0xBC) return 1;
    if(ptr[21]!=0xE8) return 1;
  }else{
    if(ptr[0]!=0x48) return 1;
    if(ptr[1]!=0xB8) return 1;
    if(ptr[10]!=0xBB) return 1;
    if(ptr[15]!=0xB9) return 1;
    if(ptr[20]!=0x41) return 1;
    if(ptr[21]!=0xBC) return 1;
    if(ptr[26]!=0xE8) return 1;
  }
  return 0;
}
