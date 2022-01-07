
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmfl; int dmlen; int drga; int dmea; } ;


 int SCSPLOG (char*,int ,int ,int ) ;
 TYPE_1__ scsp ;
 int* scsp_ccr ;
 int scsp_main_interrupt (int) ;
 int scsp_sound_interrupt (int) ;

__attribute__((used)) static void
scsp_dma (void)
{
  if (scsp.dmfl & 0x20)
    {

      SCSPLOG ("scsp dma: scsp_ram(%08lx) <- reg(%08lx) * %08lx\n",
               scsp.dmea, scsp.drga, scsp.dmlen);
    }
  else
    {

      SCSPLOG ("scsp dma: scsp_ram(%08lx) -> reg(%08lx) * %08lx\n",
               scsp.dmea, scsp.drga, scsp.dmlen);
    }

  scsp_ccr[0x16 ^ 3] &= 0xE0;

  scsp_sound_interrupt (0x10);
  scsp_main_interrupt (0x10);
}
