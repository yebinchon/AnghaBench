
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BB_BUTTON_IRQ_MASK ;
 int CPU_GenerateIRQ () ;
 int D (int ) ;
 scalar_t__ FALSE ;
 int PBI_BB_enabled ;
 int PBI_IRQ ;
 scalar_t__ TRUE ;
 scalar_t__ buttondown ;
 int printf (char*) ;

void PBI_BB_Menu(void)
{
 if (!PBI_BB_enabled) return;
 if (buttondown == FALSE) {
  D(printf("blackbox button down interrupt generated\n"));
  CPU_GenerateIRQ();
  PBI_IRQ |= BB_BUTTON_IRQ_MASK;
  buttondown = TRUE;
 }
}
