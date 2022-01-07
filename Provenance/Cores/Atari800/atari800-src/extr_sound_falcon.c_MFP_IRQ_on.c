
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* DMActrlptr ;
 int IVECTOR ;
 int Jenabint (int) ;
 int Mfpint (int,int ) ;
 scalar_t__ RATE25KHZ ;
 scalar_t__ RATE50KHZ ;
 int Setbuffer (long,int ) ;
 int Xbtimer (int ,int,int,int ) ;
 scalar_t__ dsp_buffer1 ;
 scalar_t__ dsprate ;
 int sndbufsize ;
 int timer_A ;

void MFP_IRQ_on(void)
{
 Setbuffer((long)dsp_buffer1, sndbufsize);
 if (dsprate == RATE25KHZ)
  DMActrlptr[0x10] = 0x80 | 2;
 else if (dsprate == RATE50KHZ)
  DMActrlptr[0x10] = 0x80 | 3;
 else
  DMActrlptr[0x10] = 0x80 | 1;

 DMActrlptr[0] = 0x400 | 3;

 Mfpint(13, timer_A);
 Xbtimer(0, 8, 1, timer_A);
 IVECTOR &= ~(1 << 3);
 Jenabint(13);
}
