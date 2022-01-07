
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX ;
 int OPER_PCDI_32 () ;

__attribute__((used)) static void m68k_op_movea_32_pcdi(void)
{
  AX = OPER_PCDI_32();
}
