
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ pointer ;


 int assert (int) ;
 int memcmp (void*,void*,int) ;

int verify_dirty(pointer addr)
{
  u32 *ptr=(u32 *)addr;


  assert((*ptr&0xFFF00000)==0xe5900000);
  u32 offset=*ptr&0xfff;
  u32 *l_ptr=(void *)ptr+offset+8;
  u32 source=l_ptr[0];
  u32 copy=l_ptr[1];
  u32 len=l_ptr[2];
  ptr+=4;
  if((*ptr&0xFF000000)!=0xeb000000) ptr++;
  assert((*ptr&0xFF000000)==0xeb000000);

  return !memcmp((void *)source,(void *)copy,len);
}
