
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ pointer ;


 int assert (int) ;
 int memcmp (void*,void*,scalar_t__) ;

int verify_dirty(pointer addr)
{
  u8 *ptr=(u8 *)addr;
  assert(ptr[5]==0xB8);
  u32 source=*(u32 *)(ptr+6);
  u32 copy=*(u32 *)(ptr+11);
  u32 len=*(u32 *)(ptr+16);
  assert(ptr[20]==0xE8);
  return !memcmp((void *)source,(void *)copy,len);
}
