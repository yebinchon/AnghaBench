
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int emu_status; } ;


 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int SSP_WAIT_PM0 ;
 int elprintf (int ,char*,...) ;
 int pm_io (int ,int ,int ) ;
 int rPM0 ;
 TYPE_1__* ssp ;

__attribute__((used)) static u32 read_PM0(void)
{
  u32 d = pm_io(0, 0, 0);
  if (d != (u32)-1) return d;



  d = rPM0;
  if (!(d & 2) && (GET_PPC_OFFS() == 0x800 || GET_PPC_OFFS() == 0x1851E)) {
    ssp->emu_status |= SSP_WAIT_PM0;



  }
  rPM0 &= ~2;
  return d;
}
