
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ pointer ;


 int assert (int) ;

void get_bounds(pointer addr,u32 *start,u32 *end)
{
  u8 *ptr=(u8 *)addr;
  assert(ptr[5]==0xB8);
  u32 source=*(u32 *)(ptr+6);

  u32 len=*(u32 *)(ptr+16);
  assert(ptr[20]==0xE8);
  if(start) *start=source;
  if(end) *end=source+len;
}
