
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_CS () ;
 int CYC_SCC_R_TRUE ;
 int DY ;
 int USE_CYCLES (int ) ;

__attribute__((used)) static void m68k_op_scs_8_d(void)
{
  if(COND_CS())
  {
    DY |= 0xff;
    USE_CYCLES(CYC_SCC_R_TRUE);
    return;
  }
  DY &= 0xffffff00;
}
