
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_desa_cmpa () ;
 scalar_t__ check_desa_cmpm () ;
 scalar_t__ check_desa_eor_cmp () ;
 int desa_dcw () ;

__attribute__((used)) static void desa_lineB(void)
{
  if(check_desa_cmpa()) return;
  else if(check_desa_eor_cmp()) return;
  else if(check_desa_cmpm()) return;
  else desa_dcw();
  return;
}
