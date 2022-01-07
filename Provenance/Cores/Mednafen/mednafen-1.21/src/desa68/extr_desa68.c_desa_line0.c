
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_desa_IMM_SR () ;
 scalar_t__ check_desa_bitop () ;
 scalar_t__ check_desa_imm_op () ;
 scalar_t__ check_desa_movep () ;
 int desa_dcw () ;

__attribute__((used)) static void desa_line0(void)
{
  if(check_desa_movep() ) return;
  if(check_desa_bitop() ) return;
  if(check_desa_IMM_SR() ) return;
  if(check_desa_imm_op() ) return;
  else desa_dcw();
}
