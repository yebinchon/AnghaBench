
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dma_xfers; } ;
struct TYPE_4__ {int* reg; int type; int status; } ;
struct TYPE_6__ {TYPE_2__ m; TYPE_1__ video; } ;


 int EL_VDPDMA ;
 TYPE_3__ Pico ;
 int SekCyclesDone () ;
 int* dma_bsycles ;
 int* dma_timings ;
 int elprintf (int ,char*,int,int,int,int,int ) ;

int CheckDMA(void)
{
  int burn = 0, xfers_can, dma_op = Pico.video.reg[0x17]>>6;
  int xfers = Pico.m.dma_xfers;
  int dma_op1;

  if(!(dma_op&2)) dma_op = (Pico.video.type==1) ? 0 : 1;
  dma_op1 = dma_op;
  if(Pico.video.reg[12] & 1) dma_op |= 4;
  if(!(Pico.video.status&8)&&(Pico.video.reg[1]&0x40)) dma_op|=8;
  xfers_can = dma_timings[dma_op];
  if(xfers <= xfers_can)
  {
    if(dma_op&2) Pico.video.status&=~2;
    else {
      burn = xfers * dma_bsycles[dma_op] >> 8;
    }
    Pico.m.dma_xfers = 0;
  } else {
    if(!(dma_op&2)) burn = 488;
    Pico.m.dma_xfers -= xfers_can;
  }

  elprintf(EL_VDPDMA, "~Dma %i op=%i can=%i burn=%i [%i]", Pico.m.dma_xfers, dma_op1, xfers_can, burn, SekCyclesDone());

  return burn;
}
