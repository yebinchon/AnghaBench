
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_16 (int) ;
 int EA_AW_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int) ;
 int XFLAG_AS_1 () ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int) ;

void m68k_op_negx_16_aw(void)
{
 uint ea = EA_AW_16();
 uint src = m68ki_read_16(ea);
 uint res = 0 - MASK_OUT_ABOVE_16(src) - XFLAG_AS_1();

 FLAG_N = NFLAG_16(res);
 FLAG_X = FLAG_C = CFLAG_16(res);
 FLAG_V = (src & res)>>8;

 res = MASK_OUT_ABOVE_16(res);
 FLAG_Z |= res;

 m68ki_write_16(ea, res);
}
