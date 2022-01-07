
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct PicoVideo {unsigned int status; int* reg; int pending_ints; int v_counter; scalar_t__ pending; } ;
struct TYPE_2__ {struct PicoVideo video; } ;


 int EL_HVCNT ;
 int EL_SR ;
 TYPE_1__ Pico ;
 int SekCyclesDone () ;
 int SekPc ;
 unsigned int VideoRead () ;
 int elprintf (int ,char*,unsigned int,int,...) ;
 unsigned int* hcounts_32 ;
 unsigned int* hcounts_40 ;
 int line_base_cycles ;

unsigned int PicoVideoRead(unsigned int a)
{
  a&=0x1c;

  if (a==0x04)
  {
    struct PicoVideo *pv=&Pico.video;
    unsigned int d;
    d=pv->status;

    if (SekCyclesDone() - line_base_cycles >= 488-88)
      d|=0x0004;

    d |= ((pv->reg[1]&0x40)^0x40) >> 3;
    d |= (pv->pending_ints&0x20)<<2;
    if (d&0x100) pv->status&=~0x100;

    pv->pending = 0;

    elprintf(EL_SR, "SR read: %04x @ %06x", d, SekPc);
    return d;
  }
  if ((a&0x1c)==0x08)
  {
    unsigned int d;

    d = (SekCyclesDone() - line_base_cycles) & 0x1ff;
    if (Pico.video.reg[12]&1)
         d = hcounts_40[d];
    else d = hcounts_32[d];

    elprintf(EL_HVCNT, "hv: %02x %02x (%i) @ %06x", d, Pico.video.v_counter, SekCyclesDone(), SekPc);
    return d | (Pico.video.v_counter << 8);
  }

  if (a==0x00)
  {
    return VideoRead();
  }

  return 0;
}
