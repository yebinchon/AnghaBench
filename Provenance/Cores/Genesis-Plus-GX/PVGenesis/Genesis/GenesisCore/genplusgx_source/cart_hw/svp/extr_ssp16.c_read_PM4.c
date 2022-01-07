
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int emu_status; } ;


 int EL_ANOMALY ;
 int EL_SVP ;
 int GET_PPC_OFFS () ;
 int SSP_WAIT_30FE06 ;
 int SSP_WAIT_30FE08 ;
 int elprintf (int,char*,...) ;
 scalar_t__ pm_io (int,int ,int ) ;
 scalar_t__ rPM4 ;
 TYPE_1__* ssp ;

__attribute__((used)) static u32 read_PM4(void)
{
  u32 d = pm_io(4, 0, 0);
  if (d == 0) {
    switch (GET_PPC_OFFS()) {
      case 0x0854:
        ssp->emu_status |= SSP_WAIT_30FE08;



        break;
      case 0x4f12:
        ssp->emu_status |= SSP_WAIT_30FE06;



        break;
    }
  }
  if (d != (u32)-1) return d;




  return rPM4;
}
