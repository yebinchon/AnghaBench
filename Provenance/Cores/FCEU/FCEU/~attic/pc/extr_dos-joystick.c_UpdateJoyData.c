
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef void* uint32 ;


 int inportb (int) ;
 int joybuttons ;
 void* joyx ;
 void* joyy ;
 int outportb (int,int ) ;

void UpdateJoyData(void)
{
 uint32 xc,yc;


 joybuttons=((inportb(0x201)&0xF0)^0xF0)>>4;

 xc=yc=0;

 {
  outportb(0x201,0);

  for(;;)
  {
   uint8 b;

   b=inportb(0x201);
   if(!(b&3))
    break;
   if(b&1) xc++;
   if(b&2) yc++;
  }
 }

 joyx=xc;
 joyy=yc;
}
