
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_SUB_32 (int,int ,int) ;
 int EA_AY_AI_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int XFLAG_AS_1 () ;
 int m68ki_read_32 (int) ;
 int m68ki_write_32 (int,int) ;

void m68k_op_negx_32_ai(void)
{
 uint ea = EA_AY_AI_32();
 uint src = m68ki_read_32(ea);
 uint res = 0 - MASK_OUT_ABOVE_32(src) - XFLAG_AS_1();

 FLAG_N = NFLAG_32(res);
 FLAG_X = FLAG_C = CFLAG_SUB_32(src, 0, res);
 FLAG_V = (src & res)>>24;

 res = MASK_OUT_ABOVE_32(res);
 FLAG_Z |= res;

 m68ki_write_32(ea, res);
}
