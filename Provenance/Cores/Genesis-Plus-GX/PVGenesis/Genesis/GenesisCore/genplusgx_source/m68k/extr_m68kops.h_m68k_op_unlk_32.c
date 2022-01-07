
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int AY ;
 int * REG_A ;
 int m68ki_pull_32 () ;

__attribute__((used)) static void m68k_op_unlk_32(void)
{
  uint* r_dst = &AY;

  REG_A[7] = *r_dst;
  *r_dst = m68ki_pull_32();
}
