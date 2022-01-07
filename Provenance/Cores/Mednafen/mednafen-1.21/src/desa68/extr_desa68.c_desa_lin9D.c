
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_desa_add_sub () ;
 scalar_t__ check_desa_adda_suba () ;
 scalar_t__ check_desa_addx_subx () ;
 int desa_dcw () ;

__attribute__((used)) static void desa_lin9D(void)
{
  if(check_desa_adda_suba()) return;
  else if(check_desa_addx_subx()) return;
  else if(check_desa_add_sub()) return;
  else desa_dcw();
  return;
}
