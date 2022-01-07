
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ pointer ;


 int assert (int) ;

void get_bounds(pointer addr,u32 *start,u32 *end)
{
  u8 *ptr=(u8 *)addr;
  if(ptr[0]==0xB8) {
    u32 source=*(u32 *)(ptr+1);

    u32 len=*(u32 *)(ptr+11);
    assert(ptr[21]==0xE8);
    *start=source;
    *end=source+len;
  }else{
    assert(ptr[0]==0x48&&ptr[1]==0xB8);
    u64 source=*(u64 *)(ptr+2);

    u32 len=*(u32 *)(ptr+16);
    assert(ptr[26]==0xE8);
    *start=source;
    *end=source+len;
  }
}
