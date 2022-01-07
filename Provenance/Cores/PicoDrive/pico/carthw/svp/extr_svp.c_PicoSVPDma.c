
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int romsize; scalar_t__ rom; } ;
struct TYPE_3__ {scalar_t__ dram; } ;


 int EL_ANOMALY ;
 int EL_SVP ;
 int EL_VDPDMA ;
 TYPE_2__ Pico ;
 int elprintf (int,char*,unsigned int,int) ;
 TYPE_1__* svp ;

__attribute__((used)) static int PicoSVPDma(unsigned int source, int len, unsigned short **srcp, unsigned short **limitp)
{
 if (source < Pico.romsize)
 {
  source -= 2;
  *srcp = (unsigned short *)(Pico.rom + (source&~1));
  *limitp = (unsigned short *)(Pico.rom + Pico.romsize);
  return 1;
 }
 else if ((source & 0xfe0000) == 0x300000)
 {
  elprintf(EL_VDPDMA|EL_SVP, "SVP DmaSlow from %06x, len=%i", source, len);
  source &= 0x1fffe;
  source -= 2;
  *srcp = (unsigned short *)(svp->dram + source);
  *limitp = (unsigned short *)(svp->dram + sizeof(svp->dram));
  return 1;
 }
 else
  elprintf(EL_VDPDMA|EL_SVP|EL_ANOMALY, "SVP FIXME unhandled DmaSlow from %06x, len=%i", source, len);

 return 0;
}
