
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_pier_statef () ;
 int pier_dump_prot ;
 int* pier_regs ;

__attribute__((used)) static void carthw_pier_reset(void)
{
  pier_regs[0] = 1;
  pier_regs[1] = pier_regs[2] = pier_regs[3] = 0;
  pier_dump_prot = 3;
  carthw_pier_statef();
}
