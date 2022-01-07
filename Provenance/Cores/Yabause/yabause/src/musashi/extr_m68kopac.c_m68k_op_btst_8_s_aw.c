
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int FLAG_Z ;
 int OPER_AW_8 () ;
 int OPER_I_8 () ;

void m68k_op_btst_8_s_aw(void)
{
 uint bit = OPER_I_8() & 7;

 FLAG_Z = OPER_AW_8() & (1 << bit);
}
