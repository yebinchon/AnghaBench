
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_8 (int) ;
 int EA_AW_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int) ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int ) ;

void m68k_op_neg_8_aw(void)
{
 uint ea = EA_AW_8();
 uint src = m68ki_read_8(ea);
 uint res = 0 - src;

 FLAG_N = NFLAG_8(res);
 FLAG_C = FLAG_X = CFLAG_8(res);
 FLAG_V = src & res;
 FLAG_Z = MASK_OUT_ABOVE_8(res);

 m68ki_write_8(ea, FLAG_Z);
}
