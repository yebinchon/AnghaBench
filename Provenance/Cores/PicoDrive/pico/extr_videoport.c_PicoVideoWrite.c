
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct PicoVideo {int* reg; int pending; int command; int addr; int status; int lwrite_cnt; int type; int pending_ints; } ;
struct TYPE_3__ {int scanline; int dirtyPal; } ;
struct TYPE_4__ {unsigned short* vsram; TYPE_1__ m; struct PicoVideo video; } ;


 int CommandChange () ;
 int DmaFill (unsigned short) ;
 int DrawSync (int) ;
 int EL_ANOMALY ;
 int EL_ASVDP ;
 int EL_INTSW ;
 int PDRAW_SPRITES_MOVED ;
 int POPT_DIS_VDP_FIFO ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int SekCyclesBurnRun (int) ;
 int SekCyclesDone () ;
 int SekEndRun (int) ;
 int SekInterrupt (int) ;
 int SekPc ;
 int SekShouldInterrupt () ;
 int VideoWrite (unsigned short) ;
 int elprintf (int ,char*,int,unsigned short,int,...) ;
 int line_base_cycles ;
 int rendstatus ;

void PicoVideoWrite(unsigned int a,unsigned short d)
{
  struct PicoVideo *pvid=&Pico.video;



  a&=0x1c;

  if (a==0x00)
  {

    if (Pico.m.scanline < 224 && (pvid->reg[1]&0x40) &&
        !(!pvid->pending &&
          ((pvid->command & 0xc00000f0) == 0x40000010 && Pico.vsram[pvid->addr>>1] == d))
       )
      DrawSync(0);

    if (pvid->pending) {
      CommandChange();
      pvid->pending=0;
    }


    if ((pvid->command&0x80) && (pvid->reg[1]&0x10) && (pvid->reg[0x17]>>6)==2)
    {
      DmaFill(d);
    }
    else
    {

      if (!(pvid->status&8) && (pvid->reg[1]&0x40) && !(PicoOpt&POPT_DIS_VDP_FIFO))
      {
        pvid->status&=~0x200;
        pvid->lwrite_cnt++;
        if (pvid->lwrite_cnt >= 4) pvid->status|=0x100;
        if (pvid->lwrite_cnt > 4) {
          SekCyclesBurnRun(32);
        }
        elprintf(EL_ASVDP, "VDP data write: %04x [%06x] {%i} #%i @ %06x", d, Pico.video.addr,
                 Pico.video.type, pvid->lwrite_cnt, SekPc);
      }
      VideoWrite(d);
    }
    return;
  }

  if (a==0x04)
  {
    if (pvid->pending)
    {
      if (d & 0x80) DrawSync(0);

      pvid->command&=0xffff0000;
      pvid->command|=d;
      pvid->pending=0;
      CommandChange();
    }
    else
    {
      if ((d&0xc000)==0x8000)
      {

        int num=(d>>8)&0x1f;
        int dold=pvid->reg[num];
        int blank_on = 0;
        pvid->type=0;
        if (num > 0x0a && !(pvid->reg[1]&4)) {
          elprintf(EL_ANOMALY, "%02x written to reg %02x in SMS mode @ %06x", d, num, SekPc);
          return;
        }

        if (num == 1 && !(d&0x40) && SekCyclesDone() - line_base_cycles <= 488-390)
          blank_on = 1;
        DrawSync(blank_on);
        pvid->reg[num]=(unsigned char)d;
        switch (num)
        {
          case 0x00:
            elprintf(EL_INTSW, "hint_onoff: %i->%i [%i] pend=%i @ %06x", (dold&0x10)>>4,
                    (d&0x10)>>4, SekCyclesDone(), (pvid->pending_ints&0x10)>>4, SekPc);
            goto update_irq;
          case 0x01:
            elprintf(EL_INTSW, "vint_onoff: %i->%i [%i] pend=%i @ %06x", (dold&0x20)>>5,
                    (d&0x20)>>5, SekCyclesDone(), (pvid->pending_ints&0x20)>>5, SekPc);
            goto update_irq;
          case 0x05:

            if (d^dold) rendstatus |= PDRAW_SPRITES_MOVED;
            break;
          case 0x0c:

            if ((d^dold)&8) Pico.m.dirtyPal = 2;
            break;
        }
        return;

update_irq:


        if (!SekShouldInterrupt())
        {
          int lines, pints, irq=0;
          lines = (pvid->reg[1] & 0x20) | (pvid->reg[0] & 0x10);
          pints = (pvid->pending_ints&lines);
               if (pints & 0x20) irq = 6;
          else if (pints & 0x10) irq = 4;
          SekInterrupt(irq);

          if (irq) SekEndRun(24);
        }

      }
      else
      {

        pvid->command&=0x0000ffff;
        pvid->command|=d<<16;
        pvid->pending=1;
      }
    }
  }
}
