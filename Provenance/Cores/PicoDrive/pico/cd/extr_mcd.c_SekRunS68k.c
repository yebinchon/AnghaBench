
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cycles; } ;
struct TYPE_5__ {scalar_t__ s68k_poll_a; } ;
struct TYPE_6__ {TYPE_1__ m; } ;


 int CycloneRun (TYPE_3__*) ;
 TYPE_3__ PicoCpuCS68k ;
 int PicoCpuFM68k ;
 int PicoCpuFS68k ;
 int PicoCpuMM68k ;
 int PicoCpuMS68k ;
 TYPE_2__* Pico_mcd ;
 int SekCycleAimS68k ;
 int SekCycleCntS68k ;
 scalar_t__ SekShouldInterrupt () ;
 int fm68k_emulate (int,int ) ;
 int * g_m68kcontext ;
 int m68k_execute (int) ;
 int m68k_set_context (int *) ;

__attribute__((used)) static void SekRunS68k(unsigned int to)
{
  int cyc_do;

  SekCycleAimS68k = to;
  if ((cyc_do = SekCycleAimS68k - SekCycleCntS68k) <= 0)
    return;

  if (SekShouldInterrupt())
    Pico_mcd->m.s68k_poll_a = 0;

  SekCycleCntS68k += cyc_do;
}
