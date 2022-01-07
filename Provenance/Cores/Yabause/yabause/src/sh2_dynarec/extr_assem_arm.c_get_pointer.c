
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ pointer ;


 int assert (int) ;

pointer get_pointer(void *stub)
{

  int *ptr=(int *)(stub+4);
  assert((*ptr&0x0ff00000)==0x05900000);
  u32 offset=*ptr&0xfff;
  int **l_ptr=(void *)ptr+offset+8;
  int *i_ptr=*l_ptr;
  assert((*i_ptr&0x0f000000)==0x0a000000);
  return (pointer)i_ptr+((*i_ptr<<8)>>6)+8;
}
