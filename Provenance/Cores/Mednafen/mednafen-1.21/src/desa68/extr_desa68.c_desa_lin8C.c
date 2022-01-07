
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_desa_abcd_sbcd () ;
 scalar_t__ check_desa_and_or () ;
 scalar_t__ check_desa_exg () ;
 scalar_t__ check_desa_mul_div () ;
 int desa_dcw () ;

__attribute__((used)) static void desa_lin8C(void)
{
  if(check_desa_abcd_sbcd()) return;
  else if(check_desa_mul_div()) return;
  else if(check_desa_exg()) return;
  else if(check_desa_and_or()) return;
  else desa_dcw();
  return;
}
