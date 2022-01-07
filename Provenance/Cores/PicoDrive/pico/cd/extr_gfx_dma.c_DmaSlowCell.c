
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_6__ {int type; void* addr; } ;
struct TYPE_5__ {int dirtyPal; } ;
struct TYPE_8__ {void** vram; void** cram; void** vsram; TYPE_2__ video; TYPE_1__ m; } ;
struct TYPE_7__ {unsigned char** word_ram1M; int* s68k_regs; } ;


 int PDRAW_SPRITES_MOVED ;
 TYPE_4__ Pico ;
 TYPE_3__* Pico_mcd ;
 int cell_map (unsigned int) ;
 int rendstatus ;

void DmaSlowCell(unsigned int source, unsigned int a, int len, unsigned char inc)
{
  unsigned char *base;
  unsigned int asrc, a2;
  u16 *r;

  base = Pico_mcd->word_ram1M[Pico_mcd->s68k_regs[3]&1];

  switch (Pico.video.type)
  {
    case 1:
      r = Pico.vram;
      for(; len; len--)
      {
        asrc = cell_map(source >> 2) << 2;
        asrc |= source & 2;

        r[a>>1] = *(u16 *)(base + asrc);
 source += 2;

        a=(u16)(a+inc);
      }
      rendstatus |= PDRAW_SPRITES_MOVED;
      break;

    case 3:
      Pico.m.dirtyPal = 1;
      r = Pico.cram;
      for(a2=a&0x7f; len; len--)
      {
        asrc = cell_map(source >> 2) << 2;
        asrc |= source & 2;
        r[a2>>1] = *(u16 *)(base + asrc);
 source += 2;

        a2+=inc;

        if(a2 >= 0x80) break;
      }
      a=(a&0xff00)|a2;
      break;

    case 5:
      r = Pico.vsram;
      for(a2=a&0x7f; len; len--)
      {
        asrc = cell_map(source >> 2) << 2;
        asrc |= source & 2;
        r[a2>>1] = *(u16 *)(base + asrc);
 source += 2;

        a2+=inc;

        if(a2 >= 0x80) break;
      }
      a=(a&0xff00)|a2;
      break;
  }

  Pico.video.addr=(u16)a;
}
