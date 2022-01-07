
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned short u16 ;
struct TYPE_5__ {unsigned short addr; unsigned char* reg; int status; } ;
struct TYPE_4__ {int dma_xfers; } ;
struct TYPE_6__ {TYPE_2__ video; TYPE_1__ m; scalar_t__ vram; } ;


 int EL_VDPDMA ;
 int GetDmaLength () ;
 int PDRAW_DIRTY_SPRITES ;
 TYPE_3__ Pico ;
 int SekCyclesDone () ;
 int elprintf (int ,char*,int,unsigned char,int ) ;
 int rendstatus ;

__attribute__((used)) static void DmaFill(int data)
{
  int len;
  unsigned short a=Pico.video.addr;
  unsigned char *vr=(unsigned char *) Pico.vram;
  unsigned char high = (unsigned char) (data >> 8);
  unsigned char inc=Pico.video.reg[0xf];

  len=GetDmaLength();
  elprintf(EL_VDPDMA, "DmaFill len %i inc %i [%i]", len, inc, SekCyclesDone());

  Pico.m.dma_xfers += len;
  Pico.video.status |= 2;



  vr[a] = (unsigned char) data;
  a=(u16)(a+inc);

  if (!inc) len=1;

  for (; len; len--) {


    vr[a] = high;


    a=(u16)(a+inc);
  }

  Pico.video.addr=a;

  Pico.video.reg[0x13] = Pico.video.reg[0x14] = 0;

  rendstatus |= PDRAW_DIRTY_SPRITES;
}
