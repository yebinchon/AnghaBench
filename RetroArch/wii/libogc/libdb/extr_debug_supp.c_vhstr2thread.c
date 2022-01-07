
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 scalar_t__ hstr2nibble (char const*,int*) ;

const char* vhstr2thread(const char *buf,s32 *thread)
{
 s32 i,val,nibble;
 s32 found0,lim;

 found0 = 0;
 for(i=0;i<16;i++,buf++) {
  if(*buf!='0') break;

  found0 = 1;
 }

 val = 0;
 lim = 16 - i;
 for(i=0;i<lim;i++,buf++) {
  if(!hstr2nibble(buf,&nibble)) {
   if(i==0 && found0) return ((void*)0);

   *thread = val;
   return buf;
  }

  val = (val<<4)|nibble;
 }
 if(hstr2nibble(buf,&nibble)) return ((void*)0);

 *thread = val;
 return buf;
}
