
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ pointer ;


 scalar_t__ verify_code ;

int isclean(pointer addr)
{

  int *ptr=((u32 *)addr)+4;



  if((*ptr&0xFF000000)!=0xeb000000) ptr++;
  if((*ptr&0xFF000000)!=0xeb000000) return 1;
  if((int)ptr+((*ptr<<8)>>6)+8==(int)verify_code) return 0;
  return 1;
}
