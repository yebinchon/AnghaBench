
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pointer ;


 int assert (int) ;

pointer get_clean_addr(pointer addr)
{
  int *ptr=(int *)addr;

  ptr+=4;



  if((*ptr&0xFF000000)!=0xeb000000) ptr++;
  assert((*ptr&0xFF000000)==0xeb000000);
  ptr++;
  if((*ptr&0xFF000000)==0xea000000) {
    return (int)ptr+((*ptr<<8)>>6)+8;
  }
  return (pointer)ptr;
}
