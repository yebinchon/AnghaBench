
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int hstr2nibble (char const*,int*) ;

s32 hstr2byte(const char *buf,s32 *bval)
{
 s32 hnib,lnib;

 if(!hstr2nibble(buf,&hnib) || !hstr2nibble(buf+1,&lnib)) return 0;

 *bval = (hnib<<4)|lnib;
 return 1;
}
