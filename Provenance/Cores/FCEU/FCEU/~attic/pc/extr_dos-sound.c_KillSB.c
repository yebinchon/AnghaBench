
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KillDMABuffer () ;
 int PICMask ;
 int ResetDSP () ;
 int ResetVectors () ;
 int SBIRQ ;
 int WriteDSP (int) ;
 scalar_t__ format ;
 scalar_t__ hsmode ;
 int outportb (int,int) ;

void KillSB(void)
{
 if(hsmode)
  ResetDSP();
 else
  WriteDSP(format?0xD9:0xDA);
 WriteDSP(0xD3);

 outportb((SBIRQ>7)?0xA1:0x21,PICMask|(1<<(SBIRQ&7)));
 ResetVectors();
 outportb((SBIRQ>7)?0xA1:0x21,PICMask);
 KillDMABuffer();
}
