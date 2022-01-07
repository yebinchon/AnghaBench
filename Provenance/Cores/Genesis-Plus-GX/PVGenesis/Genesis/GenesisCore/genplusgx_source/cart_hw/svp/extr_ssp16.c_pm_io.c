
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned short u32 ;
struct TYPE_12__ {scalar_t__ rom; } ;
struct TYPE_11__ {int v; } ;
struct TYPE_7__ {int* RAM1; } ;
struct TYPE_8__ {TYPE_1__ bank; } ;
struct TYPE_10__ {int emu_status; int** pmac; TYPE_2__ mem; } ;
struct TYPE_9__ {scalar_t__ iram_rom; scalar_t__ dram; } ;


 int CADDR ;
 int EL_ANOMALY ;
 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int* PC ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 TYPE_6__ cart ;
 int elprintf (int,char*,int,...) ;
 int get_inc (int) ;
 int last_iram ;
 int overwite_write (unsigned short,unsigned short) ;
 TYPE_5__ rPMC ;
 int rST ;
 TYPE_4__* ssp ;
 TYPE_3__* svp ;

__attribute__((used)) static u32 pm_io(int reg, int write, u32 d)
{
  if (ssp->emu_status & SSP_PMC_SET)
  {

    if ((*(PC-1) & 0xff0f) && (*(PC-1) & 0xfff0)) {




      ssp->emu_status &= ~SSP_PMC_SET;
      return 0;
    }



    ssp->pmac[write][reg] = rPMC.v;
    ssp->emu_status &= ~SSP_PMC_SET;
    return 0;
  }


  if (ssp->emu_status & SSP_PMC_HAVE_ADDR) {




    ssp->emu_status &= ~SSP_PMC_HAVE_ADDR;
  }

  if (reg == 4 || (rST & 0x60))
  {



    unsigned short *dram = (unsigned short *)svp->dram;
    if (write)
    {


      int addr = ssp->pmac[1][reg]&0xffff;
      int mode = ssp->pmac[1][reg]>>16;




      if ((mode & 0x43ff) == 0x0018)
      {
        int inc = get_inc(mode);




        if (mode & 0x0400) {
               overwite_write(dram[addr], d);
        } else dram[addr] = d;
        ssp->pmac[1][reg] += inc;
      }
      else if ((mode & 0xfbff) == 0x4018)
      {




        if (mode & 0x0400) {
               overwite_write(dram[addr], d);
        } else dram[addr] = d;

        ssp->pmac[1][reg] += (addr&1) ? 31 : 1;
      }
      else if ((mode & 0x47ff) == 0x001c)
      {
        int inc = get_inc(mode);





        ((unsigned short *)svp->iram_rom)[addr&0x3ff] = d;
        ssp->pmac[1][reg] += inc;
      }







    }
    else
    {


      int addr = ssp->pmac[0][reg]&0xffff;
      int mode = ssp->pmac[0][reg]>>16;

      if ((mode & 0xfff0) == 0x0800)
      {






        if ((signed int)(ssp->pmac[0][reg] & 0xffff) == -1) ssp->pmac[0][reg] += 1<<16;
        ssp->pmac[0][reg] ++;

        d = ((unsigned short *)cart.rom)[addr|((mode&0xf)<<16)];
      }
      else if ((mode & 0x47ff) == 0x0018)
      {
        int inc = get_inc(mode);



        d = dram[addr];
        ssp->pmac[0][reg] += inc;
      }
      else
      {




        d = 0;
      }
    }


    rPMC.v = ssp->pmac[write][reg];

    return d;
  }

  return (u32)-1;
}
