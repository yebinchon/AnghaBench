#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* slot; } ;
struct TYPE_3__ {int ssctl; int sbctl; int lpctl; scalar_t__ krs; int /*<<< orphan*/  mdy; int /*<<< orphan*/  mdx; int /*<<< orphan*/  mdl; scalar_t__ tl; scalar_t__ sdir; scalar_t__ swe; scalar_t__ rr; scalar_t__ lslnk; scalar_t__ ar; scalar_t__ eghold; scalar_t__ sr; scalar_t__ dr; scalar_t__ lea; scalar_t__ lsa; scalar_t__ sa; scalar_t__ pcm8b; } ;

/* Variables and functions */
 char* FUNC0 (char*,char*,int,int) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 unsigned long SCSP_FREQ_LB ; 
 TYPE_2__ scsp ; 
 int FUNC4 (int) ; 

void
FUNC5 (u8 slotnum, char *outstring)
{
  u32 slotoffset = slotnum * 0x20;

  FUNC3 (outstring, "Sound Source = ");
  switch (scsp.slot[slotnum].ssctl)
    {
    case 0:
      FUNC3 (outstring, "External DRAM data\r\n");
      break;
    case 1:
      FUNC3 (outstring, "Internal(Noise)\r\n");
      break;
    case 2:
      FUNC3 (outstring, "Internal(0's)\r\n");
      break;
    default:
      FUNC3 (outstring, "Invalid setting\r\n");
      break;
    }

  FUNC3 (outstring, "Source bit = ");
  switch(scsp.slot[slotnum].sbctl)
    {
    case 0:
      FUNC3 (outstring, "No bit reversal\r\n");
      break;
    case 1:
      FUNC3 (outstring, "Reverse other bits\r\n");
      break;
    case 2:
      FUNC3 (outstring, "Reverse sign bit\r\n");
      break;
    case 3:
      FUNC3 (outstring, "Reverse sign and other bits\r\n");
      break;
    }

  // Loop Control
  FUNC3 (outstring, "Loop Mode = ");
  switch (scsp.slot[slotnum].lpctl)
    {
    case 0:
      FUNC3 (outstring, "Off\r\n");
      break;
    case 1:
      FUNC3 (outstring, "Normal\r\n");
      break;
    case 2:
      FUNC3 (outstring, "Reverse\r\n");
      break;
    case 3:
      FUNC3 (outstring, "Alternating\r\n");
      break;
    }

  // PCM8B
  // NOTE: Need curly braces here, as AddString is a macro.
  if (scsp.slot[slotnum].pcm8b)
    {
      FUNC3 (outstring, "8-bit samples\r\n");
    }
  else
    {
      FUNC3 (outstring, "16-bit samples\r\n");
    }

  FUNC3 (outstring, "Start Address = %05lX\r\n", (unsigned long)scsp.slot[slotnum].sa);
  FUNC3 (outstring, "Loop Start Address = %04lX\r\n", (unsigned long)scsp.slot[slotnum].lsa >> SCSP_FREQ_LB);
  FUNC3 (outstring, "Loop End Address = %04lX\r\n", (unsigned long)scsp.slot[slotnum].lea >> SCSP_FREQ_LB);
  FUNC3 (outstring, "Decay 1 Rate = %ld\r\n", (unsigned long)scsp.slot[slotnum].dr);
  FUNC3 (outstring, "Decay 2 Rate = %ld\r\n", (unsigned long)scsp.slot[slotnum].sr);
  if (scsp.slot[slotnum].eghold)
    FUNC3 (outstring, "EG Hold Enabled\r\n");
  FUNC3 (outstring, "Attack Rate = %ld\r\n", (unsigned long)scsp.slot[slotnum].ar);

  if (scsp.slot[slotnum].lslnk)
    FUNC3 (outstring, "Loop Start Link Enabled\r\n");

  if (scsp.slot[slotnum].krs != 0)
    FUNC3 (outstring, "Key rate scaling = %ld\r\n", (unsigned long)scsp.slot[slotnum].krs);

  FUNC3 (outstring, "Decay Level = %d\r\n", (FUNC4(slotoffset + 0xA) >> 5) & 0x1F);
  FUNC3 (outstring, "Release Rate = %ld\r\n", (unsigned long)scsp.slot[slotnum].rr);

  if (scsp.slot[slotnum].swe)
    FUNC3 (outstring, "Stack Write Inhibited\r\n");

  if (scsp.slot[slotnum].sdir)
    FUNC3 (outstring, "Sound Direct Enabled\r\n");

  FUNC3 (outstring, "Total Level = %ld\r\n", (unsigned long)scsp.slot[slotnum].tl);

  FUNC3 (outstring, "Modulation Level = %d\r\n", scsp.slot[slotnum].mdl);
  FUNC3 (outstring, "Modulation Input X = %d\r\n", scsp.slot[slotnum].mdx);
  FUNC3 (outstring, "Modulation Input Y = %d\r\n", scsp.slot[slotnum].mdy);

  FUNC3 (outstring, "Octave = %d\r\n", (FUNC4(slotoffset + 0x10) >> 11) & 0xF);
  FUNC3 (outstring, "Frequency Number Switch = %d\r\n", FUNC4(slotoffset + 0x10) & 0x3FF);

  FUNC3 (outstring, "LFO Reset = %s\r\n", ((FUNC4(slotoffset + 0x12) >> 15) & 0x1) ? "TRUE" : "FALSE");
  FUNC3 (outstring, "LFO Frequency = %d\r\n", (FUNC4(slotoffset + 0x12) >> 10) & 0x1F);
  outstring = FUNC0 (outstring, "LFO Frequency modulation waveform = ",
                           (FUNC4(slotoffset + 0x12) >> 5) & 0x7,
                           (FUNC4(slotoffset + 0x12) >> 8) & 0x3);
  FUNC3 (outstring, "LFO Frequency modulation level = %d\r\n", (FUNC4(slotoffset + 0x12) >> 5) & 0x7);
  outstring = FUNC0 (outstring, "LFO Amplitude modulation waveform = ",
                           FUNC4(slotoffset + 0x12) & 0x7,
                           (FUNC4(slotoffset + 0x12) >> 3) & 0x3);
  FUNC3 (outstring, "LFO Amplitude modulation level = %d\r\n", FUNC4(slotoffset + 0x12) & 0x7);

  FUNC3 (outstring, "Input mix level = ");
  outstring = FUNC1 (outstring, FUNC4(slotoffset + 0x14) & 0x7);
  FUNC3 (outstring, "Input Select = %d\r\n", (FUNC4(slotoffset + 0x14) >> 3) & 0x1F);

  FUNC3 (outstring, "Direct data send level = ");
  outstring = FUNC1 (outstring, (FUNC4(slotoffset + 0x16) >> 13) & 0x7);
  FUNC3 (outstring, "Direct data panpot = ");
  outstring = FUNC2 (outstring, (FUNC4(slotoffset + 0x16) >> 8) & 0x1F);

  FUNC3 (outstring, "Effect data send level = ");
  outstring = FUNC1 (outstring, (FUNC4(slotoffset + 0x16) >> 5) & 0x7);
  FUNC3 (outstring, "Effect data panpot = ");
  outstring = FUNC2 (outstring, FUNC4(slotoffset + 0x16) & 0x1F);
}