
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int dirtyPal; } ;
struct TYPE_5__ {unsigned int addr; int type; int* reg; } ;
struct TYPE_6__ {int* vram; int* cram; int* vsram; TYPE_1__ m; TYPE_2__ video; } ;


 int AutoIncrement () ;
 int PDRAW_DIRTY_SPRITES ;
 TYPE_3__ Pico ;
 int rendstatus ;

__attribute__((used)) static void VideoWrite(u16 d)
{
  unsigned int a=Pico.video.addr;

  switch (Pico.video.type)
  {
    case 1: if(a&1) d=(u16)((d<<8)|(d>>8));
            Pico.vram [(a>>1)&0x7fff]=d;
            if (a - ((unsigned)(Pico.video.reg[5]&0x7f) << 9) < 0x400)
              rendstatus |= PDRAW_DIRTY_SPRITES;
            break;
    case 3: Pico.m.dirtyPal = 1;
            Pico.cram [(a>>1)&0x003f]=d; break;
    case 5: Pico.vsram[(a>>1)&0x003f]=d; break;

  }

  AutoIncrement();
}
