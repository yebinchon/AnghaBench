
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Disa4E70 (int) ;
 int DisaAbcd (int) ;
 int DisaAddq (int) ;
 int DisaAddx (int) ;
 int DisaArithImm (int) ;
 int DisaArithReg (int) ;
 int DisaArithSr (int) ;
 int DisaAritha (int) ;
 int DisaAsr (int) ;
 int DisaAsrEa (int) ;
 int DisaBranch (int) ;
 int DisaBtstImm (int) ;
 int DisaBtstReg (int) ;
 int DisaCmpEor (int) ;
 int DisaCmpm (int) ;
 int DisaDbra (int) ;
 int DisaExg (int) ;
 int DisaExt (int) ;
 int DisaJsr (int) ;
 int DisaLea (int) ;
 int DisaLink (int) ;
 int DisaMove (int) ;
 int DisaMoveSr (int) ;
 int DisaMoveUsp (int) ;
 int DisaMovem (int) ;
 int DisaMovep (int) ;
 int DisaMoveq (int) ;
 int DisaMul (int) ;
 int DisaNbcd (int) ;
 int DisaNeg (int) ;
 int DisaPea (int) ;
 int DisaSet (int) ;
 int DisaSwap (int) ;
 int DisaTas (int) ;
 int DisaTrap (int) ;
 int DisaTst (int) ;
 int DisaUnlk (int) ;
 int OpChk (int) ;

__attribute__((used)) static int TryOp(int op)
{
  if ((op&0xf100)==0x0000) DisaArithImm(op);
  if ((op&0xf5bf)==0x003c) DisaArithSr(op);
  if ((op&0xf100)==0x0100) DisaBtstReg(op);
  if ((op&0xf138)==0x0108) DisaMovep(op);
  if ((op&0xff00)==0x0800) DisaBtstImm(op);
  if ((op&0xc000)==0x0000) DisaMove(op);
  if ((op&0xf900)==0x4000) DisaNeg(op);
  if ((op&0xf140)==0x4100) OpChk(op);
  if ((op&0xf1c0)==0x41c0) DisaLea(op);
  if ((op&0xf9c0)==0x40c0) DisaMoveSr(op);
  if ((op&0xffc0)==0x4800) DisaNbcd(op);
  if ((op&0xfff8)==0x4840) DisaSwap(op);
  if ((op&0xffc0)==0x4840) DisaPea(op);
  if ((op&0xffb8)==0x4880) DisaExt(op);
  if ((op&0xfb80)==0x4880) DisaMovem(op);
  if ((op&0xff00)==0x4a00) DisaTst(op);
  if ((op&0xffc0)==0x4ac0) DisaTas(op);
  if ((op&0xfff0)==0x4e40) DisaTrap(op);
  if ((op&0xfff8)==0x4e50) DisaLink(op);
  if ((op&0xfff8)==0x4e58) DisaUnlk(op);
  if ((op&0xfff0)==0x4e60) DisaMoveUsp(op);
  if ((op&0xfff8)==0x4e70) Disa4E70(op);
  if ((op&0xff80)==0x4e80) DisaJsr(op);
  if ((op&0xf000)==0x5000) DisaAddq(op);
  if ((op&0xf0c0)==0x50c0) DisaSet(op);
  if ((op&0xf0f8)==0x50c8) DisaDbra(op);
  if ((op&0xf000)==0x6000) DisaBranch(op);
  if ((op&0xa000)==0x8000) DisaArithReg(op);
  if ((op&0xb1f0)==0x8100) DisaAbcd(op);
  if ((op&0xb130)==0x9100) DisaAddx(op);
  if ((op&0xb0c0)==0x80c0) DisaMul(op);
  if ((op&0xf100)==0x7000) DisaMoveq(op);
  if ((op&0x90c0)==0x90c0) DisaAritha(op);
  if ((op&0xf000)==0xb000) DisaCmpEor(op);
  if ((op&0xf138)==0xb108) DisaCmpm(op);
  if ((op&0xf130)==0xc100) DisaExg(op);
  if ((op&0xf000)==0xe000) DisaAsr(op);
  if ((op&0xf8c0)==0xe0c0) DisaAsrEa(op);


  return 0;
}
