
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_ADD_32 (int,int,int) ;
 int EA_AY_DI_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int REG_IR ;
 int VFLAG_ADD_32 (int,int,int) ;
 int m68ki_read_32 (int) ;
 int m68ki_write_32 (int,int ) ;

void m68k_op_addq_32_di(void)
{
 uint src = (((REG_IR >> 9) - 1) & 7) + 1;
 uint ea = EA_AY_DI_32();
 uint dst = m68ki_read_32(ea);
 uint res = src + dst;


 FLAG_N = NFLAG_32(res);
 FLAG_V = VFLAG_ADD_32(src, dst, res);
 FLAG_X = FLAG_C = CFLAG_ADD_32(src, dst, res);
 FLAG_Z = MASK_OUT_ABOVE_32(res);

 m68ki_write_32(ea, FLAG_Z);
}
