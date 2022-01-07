
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSPV ;
 int GetBLASTER () ;
 int GetDSPVersion () ;
 int IVector ;
 int KillDMABuffer () ;
 int MakeDMABuffer () ;
 int PICMask ;
 int ProgramDMA () ;
 scalar_t__ ReadPtr ;
 int ResetDSP () ;
 int SBDMA ;
 int SBDMA16 ;
 int SBIRQ ;
 int SetVectors () ;
 int WaveBuffer ;
 int WriteDSP (int) ;
 scalar_t__ WritePtr ;
 int format ;
 int frags ;
 int fragsize ;
 int fragtotal ;
 int hbusy ;
 int hsmode ;
 int inportb (int) ;
 int malloc (int) ;
 int memset (int ,int,int) ;
 int outportb (int,int) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int whichbuf ;

int InitSB(int Rate, int bittage)
{
 hsmode=hbusy=0;
 whichbuf=1;
 puts("Initializing Sound Blaster...");

 format=bittage?1:0;
 frags=8;

 if(Rate<=11025)
  fragsize=1<<5;
 else if(Rate<=22050)
  fragsize=1<<6;
 else
  fragsize=1<<7;

 fragtotal=frags*fragsize;
 WaveBuffer=malloc(fragtotal<<format);

 if(format)
  memset(WaveBuffer,0,fragtotal*2);
 else
  memset(WaveBuffer,128,fragtotal);

 WritePtr=ReadPtr=0;

 if((Rate<8192) || (Rate>65535))
 {
  printf(" Unsupported playback rate: %d samples per second\n",Rate);
  return(0);
 }

 if(!GetBLASTER())
  return(0);


 if(SBIRQ>7)
 {
  PICMask=inportb(0xA1);
  outportb(0xA1,PICMask|(1<<(SBIRQ&7)));
 }
 else
 {
  PICMask=inportb(0x21);
  outportb(0x21,PICMask|(1<<SBIRQ));
 }
 if(!ResetDSP())
 {
  puts(" Error resetting the DSP.");
  return(0);
 }

 if(!(DSPV=GetDSPVersion()))
 {
  puts(" Error getting the DSP version.");
  return(0);
 }

 printf(" DSP Version: %d.%d\n",DSPV>>8,DSPV&0xFF);
 if(DSPV<0x201)
 {
  printf(" DSP version number is too low.\n");
  return(0);
 }

 if(DSPV<0x400)
  format=0;
 if(!MakeDMABuffer())
 {
  puts(" Error creating low-memory DMA buffer.");
  return(0);
 }

 if(SBIRQ>7) IVector=SBIRQ+0x68;
 else IVector=SBIRQ+0x8;

 if(!SetVectors())
 {
  puts(" Error setting interrupt vectors.");
  KillDMABuffer();
  return(0);
 }


 if(SBIRQ>7)
  outportb(0xA1,PICMask&(~(1<<(SBIRQ&7))));
 else
  outportb(0x21,PICMask&(~(1<<SBIRQ)));

 ProgramDMA();






 WriteDSP(0xD1);

 if(DSPV>=0x400)
 {
  WriteDSP(0x41);
  WriteDSP(Rate>>8);
  WriteDSP(Rate&0xFF);
  if(!format)
  {
   WriteDSP(0xC6);
   WriteDSP(0x00);
  }
  else
  {
   WriteDSP(0xB6);
   WriteDSP(0x10);
  }
  WriteDSP((fragsize-1)&0xFF);
  WriteDSP((fragsize-1)>>8);
 }
 else
 {
  int tc,command;
  if(Rate>22050)
  {
   tc=(65536-(256000000/Rate))>>8;
   Rate=256000000/(65536-(tc<<8));
   command=0x90;
   hsmode=1;
  }
  else
  {
   tc=256-(1000000/Rate);
   Rate=1000000/(256-tc);
   command=0x1c;
  }
  WriteDSP(0x40);
  WriteDSP(tc);
  WriteDSP(0x48);
  WriteDSP((fragsize-1)&0xFF);
  WriteDSP((fragsize-1)>>8);

  WriteDSP(command);
 }


 if(format)
  outportb(0xd4,SBDMA16&3);
 else
  outportb(0xa,SBDMA);

 printf(" %d hz, %d-bit\n",Rate,8<<format);
 return(Rate);
}
