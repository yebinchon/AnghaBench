
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AL_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int) ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int) ;

void m68k_op_asl_16_al(void)
{
 uint ea = EA_AL_16();
 uint src = m68ki_read_16(ea);
 uint res = MASK_OUT_ABOVE_16(src << 1);

 m68ki_write_16(ea, res);

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_X = FLAG_C = src >> 7;
 src &= 0xc000;
 FLAG_V = (!(src == 0 || src == 0xc000))<<7;
}
