
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int* reg; int pending_ints; unsigned int v_counter; int pending; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 int EL_HVCNT ;
 int EL_SR ;
 TYPE_2__ Pico ;
 int SekCyclesDone () ;
 int SekPc ;
 int VideoRead () ;
 int elprintf (int ,char*,unsigned int,int,...) ;
 unsigned int* hcounts_32 ;
 unsigned int* hcounts_40 ;
 int line_base_cycles ;

unsigned int PicoVideoRead8(unsigned int a)
{
  unsigned int d;
  a&=0x1d;

  switch (a)
  {
    case 0: return VideoRead() >> 8;
    case 1: return VideoRead() & 0xff;
    case 4:
      d = Pico.video.status >> 8;
      if (d&1) Pico.video.status&=~0x100;
      Pico.video.pending = 0;
      elprintf(EL_SR, "SR read (h): %02x @ %06x", d, SekPc);
      return d;
    case 5:
      d = Pico.video.status & 0xff;

      d |= ((Pico.video.reg[1]&0x40)^0x40) >> 3;
      d |= (Pico.video.pending_ints&0x20)<<2;
      if (SekCyclesDone() - line_base_cycles >= 488-88) d |= 4;
      Pico.video.pending = 0;
      elprintf(EL_SR, "SR read (l): %02x @ %06x", d, SekPc);
      return d;
    case 8:
      elprintf(EL_HVCNT, "vcounter: %02x (%i) @ %06x", Pico.video.v_counter, SekCyclesDone(), SekPc);
      return Pico.video.v_counter;
    case 9:
      d = (SekCyclesDone() - line_base_cycles) & 0x1ff;
      if (Pico.video.reg[12]&1)
           d = hcounts_40[d];
      else d = hcounts_32[d];
      elprintf(EL_HVCNT, "hcounter: %02x (%i) @ %06x", d, SekCyclesDone(), SekPc);
      return d;
  }

  return 0;
}
