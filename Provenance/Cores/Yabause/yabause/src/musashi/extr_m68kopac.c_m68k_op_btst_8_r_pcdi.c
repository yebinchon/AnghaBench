
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DX ;
 int FLAG_Z ;
 int OPER_PCDI_8 () ;

void m68k_op_btst_8_r_pcdi(void)
{
 FLAG_Z = OPER_PCDI_8() & (1 << (DX & 7));
}
