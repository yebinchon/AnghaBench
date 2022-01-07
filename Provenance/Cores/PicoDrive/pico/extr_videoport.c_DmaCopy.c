
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_5__ {size_t addr; unsigned char* reg; int status; } ;
struct TYPE_4__ {int dma_xfers; } ;
struct TYPE_6__ {TYPE_2__ video; TYPE_1__ m; scalar_t__ vram; } ;


 int EL_VDPDMA ;
 int PDRAW_DIRTY_SPRITES ;
 TYPE_3__ Pico ;
 int SekCyclesDone () ;
 int elprintf (int ,char*,int,int ) ;
 int rendstatus ;

__attribute__((used)) static void DmaCopy(int len)
{
  u16 a=Pico.video.addr;
  unsigned char *vr = (unsigned char *) Pico.vram;
  unsigned char *vrs;
  unsigned char inc=Pico.video.reg[0xf];
  int source;
  elprintf(EL_VDPDMA, "DmaCopy len %i [%i]", len, SekCyclesDone());

  Pico.m.dma_xfers += len;
  Pico.video.status |= 2;

  source =Pico.video.reg[0x15];
  source|=Pico.video.reg[0x16]<<8;
  vrs=vr+source;

  if (source+len > 0x10000) len=0x10000-source;

  for (; len; len--)
  {
    vr[a] = *vrs++;

    a=(u16)(a+inc);
  }

  Pico.video.addr=a;
  rendstatus |= PDRAW_DIRTY_SPRITES;
}
