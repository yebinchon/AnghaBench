
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int hstr2nibble (char const*,int*) ;

const char* fhstr2int(const char *buf,s32 *ival)
{
 s32 i,val,nibble;

 val = 0;
 for(i=0;i<8;i++,buf++) {
  if(!hstr2nibble(buf,&nibble)) return ((void*)0);

  val = (val<<4)|nibble;
 }

 *ival = val;
 return buf;
}
