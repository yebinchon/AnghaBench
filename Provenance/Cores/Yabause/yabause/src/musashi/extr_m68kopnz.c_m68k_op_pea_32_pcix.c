
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_PCIX_32 () ;
 int m68ki_push_32 (int ) ;

void m68k_op_pea_32_pcix(void)
{
 uint ea = EA_PCIX_32();

 m68ki_push_32(ea);
}
