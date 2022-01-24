#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int DSPV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int IVector ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int PICMask ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ ReadPtr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int SBDMA ; 
 int SBDMA16 ; 
 int SBIRQ ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  WaveBuffer ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ WritePtr ; 
 int format ; 
 int frags ; 
 int fragsize ; 
 int fragtotal ; 
 int hbusy ; 
 int hsmode ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int whichbuf ; 

int FUNC14(int Rate, int bittage)
{
 hsmode=hbusy=0;
 whichbuf=1;
 FUNC13("Initializing Sound Blaster...");

 format=bittage?1:0;
 frags=8;

 if(Rate<=11025)
  fragsize=1<<5;
 else if(Rate<=22050)
  fragsize=1<<6;
 else
  fragsize=1<<7;

 fragtotal=frags*fragsize;
 WaveBuffer=FUNC9(fragtotal<<format);

 if(format)
  FUNC10(WaveBuffer,0,fragtotal*2);
 else
  FUNC10(WaveBuffer,128,fragtotal);

 WritePtr=ReadPtr=0;

 if((Rate<8192) || (Rate>65535))
 {
  FUNC12(" Unsupported playback rate: %d samples per second\n",Rate);
  return(0);
 }

 if(!FUNC0())
  return(0);
 
 /* Disable IRQ line in PIC0 or PIC1 */
 if(SBIRQ>7)
 {
  PICMask=FUNC8(0xA1);
  FUNC11(0xA1,PICMask|(1<<(SBIRQ&7)));
 }
 else
 {
  PICMask=FUNC8(0x21);
  FUNC11(0x21,PICMask|(1<<SBIRQ));
 }
 if(!FUNC5())
 {
  FUNC13(" Error resetting the DSP.");
  return(0);
 }
 
 if(!(DSPV=FUNC1()))
 {
  FUNC13(" Error getting the DSP version.");
  return(0);
 }

 FUNC12(" DSP Version: %d.%d\n",DSPV>>8,DSPV&0xFF);
 if(DSPV<0x201)
 {
  FUNC12(" DSP version number is too low.\n");
  return(0);
 }

 if(DSPV<0x400)
  format=0;
 if(!FUNC3())
 {
  FUNC13(" Error creating low-memory DMA buffer.");
  return(0);
 }

 if(SBIRQ>7) IVector=SBIRQ+0x68;
 else IVector=SBIRQ+0x8;

 if(!FUNC6())
 {
  FUNC13(" Error setting interrupt vectors.");
  FUNC2();
  return(0);
 }

 /* Reenable IRQ line. */
 if(SBIRQ>7)
  FUNC11(0xA1,PICMask&(~(1<<(SBIRQ&7))));
 else
  FUNC11(0x21,PICMask&(~(1<<SBIRQ)));

 FUNC4();

 /* Note that the speaker must always be turned on before the mode transfer
    byte is sent to the DSP if we're going into high-speed mode, since
    a real Sound Blaster(at least my SBPro) won't accept DSP commands(except
    for the reset "command") after it goes into high-speed mode.
 */
 FUNC7(0xD1);                 // Turn on DAC speaker

 if(DSPV>=0x400)
 {
  FUNC7(0x41);                // Set sampling rate
  FUNC7(Rate>>8);             // High byte
  FUNC7(Rate&0xFF);           // Low byte
  if(!format)
  {
   FUNC7(0xC6);                // 8-bit output
   FUNC7(0x00);                // 8-bit mono unsigned PCM
  }
  else
  {
   FUNC7(0xB6);                // 16-bit output
   FUNC7(0x10);                // 16-bit mono signed PCM
  }
  FUNC7((fragsize-1)&0xFF);// Low byte of size
  FUNC7((fragsize-1)>>8);  // High byte of size
 }
 else
 {
  int tc,command;
  if(Rate>22050)
  {
   tc=(65536-(256000000/Rate))>>8;
   Rate=256000000/(65536-(tc<<8));
   command=0x90;                  // High-speed auto-initialize DMA mode transfer
   hsmode=1;
  }
  else
  {
   tc=256-(1000000/Rate);
   Rate=1000000/(256-tc);
   command=0x1c;                  // Auto-initialize DMA mode transfer
  }
  FUNC7(0x40);       // Set DSP time constant
  FUNC7(tc);         // time constant
  FUNC7(0x48);       // Set DSP block transfer size
  FUNC7((fragsize-1)&0xFF);
  FUNC7((fragsize-1)>>8);

  FUNC7(command);
 }

 /* Enable DMA */
 if(format)
  FUNC11(0xd4,SBDMA16&3);
 else
  FUNC11(0xa,SBDMA);

 FUNC12(" %d hz, %d-bit\n",Rate,8<<format);
 return(Rate);
}