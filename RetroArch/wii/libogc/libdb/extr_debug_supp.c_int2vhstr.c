
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 void** hexchars ;

char* int2vhstr(char *buf,s32 val)
{
 s32 i,nibble,shift;

 for(i=0,shift=28;i<8;i++,shift-=4) {
  nibble = (val>>shift)&0x0f;
  if(nibble) break;
 }
 if(i==8) {
  *buf++ = '0';
  return buf;
 }

 *buf++ = hexchars[nibble];
 for(i++,shift-=4;i<8;i++,shift-=4,buf++) {
  nibble = (val>>shift)&0x0f;
  *buf = hexchars[nibble];
 }
 return buf;
}
