
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
 scalar_t__ GET_MSB_16 (int) ;
 int NFLAG_16 (int) ;
 int VFLAG_CLEAR ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int) ;

__attribute__((used)) static void m68k_op_asr_16_al(void)
{
  uint ea = EA_AL_16();
  uint src = m68ki_read_16(ea);
  uint res = src >> 1;

  if(GET_MSB_16(src))
    res |= 0x8000;

  m68ki_write_16(ea, res);

  FLAG_N = NFLAG_16(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = FLAG_X = src << 8;
}
