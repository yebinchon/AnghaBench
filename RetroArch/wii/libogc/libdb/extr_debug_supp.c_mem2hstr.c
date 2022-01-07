
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 void** hexchars ;

char* mem2hstr(char *buf,const char *mem,s32 count)
{
 s32 i;
 char ch;

 for(i=0;i<count;i++,mem++) {
  ch = *mem;
  *buf++ = hexchars[ch>>4];
  *buf++ = hexchars[ch&0x0f];
 }
 *buf = 0;
 return buf;
}
