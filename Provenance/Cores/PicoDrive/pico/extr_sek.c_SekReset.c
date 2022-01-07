
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * rom; } ;
struct TYPE_3__ {scalar_t__* sp; } ;


 int CycloneReset (int *) ;
 TYPE_2__ Pico ;
 int PicoCpuCM68k ;
 int PicoCpuFM68k ;
 int PicoCpuMM68k ;
 scalar_t__ REG_USP ;
 int fm68k_reset () ;
 int * g_m68kcontext ;
 int m68k_pulse_reset () ;
 int m68k_set_context (int *) ;
 int m68k_set_irq (int ) ;
 TYPE_1__ m68ki_cpu ;

int SekReset(void)
{
  if (Pico.rom==((void*)0)) return 1;
  return 0;
}
