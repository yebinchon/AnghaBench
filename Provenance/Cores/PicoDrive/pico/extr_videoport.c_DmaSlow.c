
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct TYPE_6__ {unsigned int addr; unsigned char* reg; int type; int status; } ;
struct TYPE_5__ {int dma_xfers; int dirtyPal; } ;
struct TYPE_8__ {unsigned int romsize; void** vram; void** cram; void** vsram; TYPE_2__ video; TYPE_1__ m; scalar_t__ rom; scalar_t__ ram; } ;
struct TYPE_7__ {int* s68k_regs; int ** prg_ram_b; scalar_t__* word_ram1M; scalar_t__ word_ram2M; scalar_t__ bios; } ;


 int CheckDMA () ;
 int DmaSlowCell (unsigned int,unsigned int,int,unsigned char) ;
 int EL_ANOMALY ;
 int EL_LOGMASK ;
 int EL_VDPDMA ;
 int PAHW_MCD ;
 int PDRAW_DIRTY_SPRITES ;
 TYPE_4__ Pico ;
 int PicoAHW ;
 scalar_t__ PicoDmaHook (unsigned int,int,void***,void***) ;
 TYPE_3__* Pico_mcd ;
 int SekCyclesBurnRun (int ) ;
 int SekCyclesDone () ;
 int SekPc ;
 int elprintf (int,char*,...) ;
 int memcpy16 (void**,void**,int) ;
 int rendstatus ;

__attribute__((used)) static void DmaSlow(int len)
{
  u16 *pd=0, *pdend, *r;
  unsigned int a=Pico.video.addr, a2, d;
  unsigned char inc=Pico.video.reg[0xf];
  unsigned int source;

  source =Pico.video.reg[0x15]<<1;
  source|=Pico.video.reg[0x16]<<9;
  source|=Pico.video.reg[0x17]<<17;

  elprintf(EL_VDPDMA, "DmaSlow[%i] %06x->%04x len %i inc=%i blank %i [%i] @ %06x",
    Pico.video.type, source, a, len, inc, (Pico.video.status&8)||!(Pico.video.reg[1]&0x40),
    SekCyclesDone(), SekPc);

  Pico.m.dma_xfers += len;
  SekCyclesBurnRun(CheckDMA());

  if ((source&0xe00000)==0xe00000) {
    pd=(u16 *)(Pico.ram+(source&0xfffe));
    pdend=(u16 *)(Pico.ram+0x10000);
  }
  else if (PicoAHW & PAHW_MCD)
  {
    elprintf(EL_VDPDMA, "DmaSlow CD, r3=%02x", Pico_mcd->s68k_regs[3]);
    if(source<0x20000) {
      pd=(u16 *)(Pico_mcd->bios+(source&~1));
      pdend=(u16 *)(Pico_mcd->bios+0x20000);
    } else if ((source&0xfc0000)==0x200000) {
      source -= 2;
      if (!(Pico_mcd->s68k_regs[3]&4)) {
        pd=(u16 *)(Pico_mcd->word_ram2M+(source&0x3fffe));
        pdend=(u16 *)(Pico_mcd->word_ram2M+0x40000);
      } else {
        if (source < 0x220000) {
          int bank = Pico_mcd->s68k_regs[3]&1;
          pd=(u16 *)(Pico_mcd->word_ram1M[bank]+(source&0x1fffe));
          pdend=(u16 *)(Pico_mcd->word_ram1M[bank]+0x20000);
        } else {
          DmaSlowCell(source, a, len, inc);
          return;
        }
      }
    } else if ((source&0xfe0000)==0x020000) {
      u8 *prg_ram = Pico_mcd->prg_ram_b[Pico_mcd->s68k_regs[3]>>6];
      pd=(u16 *)(prg_ram+(source&0x1fffe));
      pdend=(u16 *)(prg_ram+0x20000);
    } else {
      elprintf(EL_VDPDMA|EL_ANOMALY, "DmaSlow[%i] %06x->%04x: FIXME: unsupported src", Pico.video.type, source, a);
      return;
    }
  }
  else
  {

    if (PicoDmaHook && PicoDmaHook(source, len, &pd, &pdend));
    else if (source<Pico.romsize) {
      pd=(u16 *)(Pico.rom+(source&~1));
      pdend=(u16 *)(Pico.rom+Pico.romsize);
    }
    else {
      elprintf(EL_VDPDMA|EL_ANOMALY, "DmaSlow[%i] %06x->%04x: invalid src", Pico.video.type, source, a);
      return;
    }
  }


  if (len > pdend - pd) {
    len = pdend - pd;
    elprintf(EL_VDPDMA|EL_ANOMALY, "DmaSlow overflow");
  }

  switch (Pico.video.type)
  {
    case 1:
      r = Pico.vram;
      if (inc == 2 && !(a&1) && a+len*2 < 0x10000)
      {

        memcpy16(r + (a>>1), pd, len);
        a += len*2;
      }
      else
      {
        for(; len; len--)
        {
          d=*pd++;
          if(a&1) d=(d<<8)|(d>>8);
          r[a>>1] = (u16)d;

          a=(u16)(a+inc);


        }
      }
      rendstatus |= PDRAW_DIRTY_SPRITES;
      break;

    case 3:
      Pico.m.dirtyPal = 1;
      r = Pico.cram;
      for(a2=a&0x7f; len; len--)
      {
        r[a2>>1] = (u16)*pd++;

        a2+=inc;



        if(a2 >= 0x80) break;
      }
      a=(a&0xff00)|a2;
      break;

    case 5:
      r = Pico.vsram;
      for(a2=a&0x7f; len; len--)
      {
        r[a2>>1] = (u16)*pd++;

        a2+=inc;



        if(a2 >= 0x80) break;
      }
      a=(a&0xff00)|a2;
      break;

    default:
      if (Pico.video.type != 0 || (EL_LOGMASK & EL_VDPDMA))
        elprintf(EL_VDPDMA|EL_ANOMALY, "DMA with bad type %i", Pico.video.type);
      break;
  }

  Pico.video.addr=(u16)a;
}
