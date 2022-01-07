
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {scalar_t__ detected; } ;
struct TYPE_4__ {TYPE_1__ poll; } ;


 int CYC_DBCC_F_EXP ;
 int CYC_DBCC_F_NOEXP ;
 int DY ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int OPER_I_16 () ;
 int REG_PC ;
 int USE_CYCLES (int ) ;
 int m68ki_branch_16 (int) ;
 TYPE_2__ m68ki_cpu ;

__attribute__((used)) static void m68k_op_dbf_16(void)
{
  uint* r_dst = &DY;
  uint res = MASK_OUT_ABOVE_16(*r_dst - 1);
  *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;


  m68ki_cpu.poll.detected = 0;

  if(res != 0xffff)
  {
    uint offset = OPER_I_16();
    REG_PC -= 2;
    m68ki_branch_16(offset);
    USE_CYCLES(CYC_DBCC_F_NOEXP);
    return;
  }
  REG_PC += 2;
  USE_CYCLES(CYC_DBCC_F_EXP);
}
