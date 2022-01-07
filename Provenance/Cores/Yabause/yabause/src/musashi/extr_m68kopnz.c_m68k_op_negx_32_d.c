
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_SUB_32 (int,int ,int) ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int XFLAG_AS_1 () ;

void m68k_op_negx_32_d(void)
{
 uint* r_dst = &DY;
 uint res = 0 - MASK_OUT_ABOVE_32(*r_dst) - XFLAG_AS_1();

 FLAG_N = NFLAG_32(res);
 FLAG_X = FLAG_C = CFLAG_SUB_32(*r_dst, 0, res);
 FLAG_V = (*r_dst & res)>>24;

 res = MASK_OUT_ABOVE_32(res);
 FLAG_Z |= res;

 *r_dst = res;
}
