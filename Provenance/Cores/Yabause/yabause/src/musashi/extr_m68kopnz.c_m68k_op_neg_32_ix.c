
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_SUB_32 (int,int ,int) ;
 int EA_AY_IX_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int m68ki_read_32 (int) ;
 int m68ki_write_32 (int,int ) ;

void m68k_op_neg_32_ix(void)
{
 uint ea = EA_AY_IX_32();
 uint src = m68ki_read_32(ea);
 uint res = 0 - src;

 FLAG_N = NFLAG_32(res);
 FLAG_C = FLAG_X = CFLAG_SUB_32(src, 0, res);
 FLAG_V = (src & res)>>24;
 FLAG_Z = MASK_OUT_ABOVE_32(res);

 m68ki_write_32(ea, FLAG_Z);
}
