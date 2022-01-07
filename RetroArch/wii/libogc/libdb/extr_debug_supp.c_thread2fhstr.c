
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 char* hexchars ;

char* thread2fhstr(char *buf,s32 thread)
{
 s32 i,nibble,shift;

 for(i=0;i<8;i++,buf++) *buf = '0';
 for(i=0,shift=28;i<8;i++,shift-=4,buf++) {
  nibble = (thread>>shift)&0x0f;
  *buf = hexchars[nibble];
 }
 return buf;
}
