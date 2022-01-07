
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_PCDI_32 () ;
 int m68ki_push_32 (int ) ;

void m68k_op_pea_32_pcdi(void)
{
 uint ea = EA_PCDI_32();

 m68ki_push_32(ea);
}
