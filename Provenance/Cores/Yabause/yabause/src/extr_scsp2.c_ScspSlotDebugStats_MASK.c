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
typedef  size_t u8 ;
struct TYPE_4__ {TYPE_1__* slot; } ;
struct TYPE_3__ {int ssctl; int sbctl; int lpctl; int /*<<< orphan*/  efpan; int /*<<< orphan*/  efsdl; int /*<<< orphan*/  dipan; int /*<<< orphan*/  disdl; int /*<<< orphan*/  isel; int /*<<< orphan*/  imxl; int /*<<< orphan*/  alfos; int /*<<< orphan*/  alfows; int /*<<< orphan*/  plfos; int /*<<< orphan*/  plfows; int /*<<< orphan*/  lfof; scalar_t__ lfore; int /*<<< orphan*/  fns; int /*<<< orphan*/  oct; int /*<<< orphan*/  mdy; int /*<<< orphan*/  mdx; int /*<<< orphan*/  mdl; int /*<<< orphan*/  tl; scalar_t__ sdir; scalar_t__ stwinh; int /*<<< orphan*/  rr; int /*<<< orphan*/  sl; int /*<<< orphan*/  krs; scalar_t__ lpslnk; int /*<<< orphan*/  ar; scalar_t__ eghold; int /*<<< orphan*/  sr; int /*<<< orphan*/  dr; int /*<<< orphan*/  lea; int /*<<< orphan*/  lsa; scalar_t__ sa; scalar_t__ pcm8b; } ;

/* Variables and functions */
 char* FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 TYPE_2__ scsp ; 

void FUNC4(u8 slotnum, char *outstring)
{
   FUNC3(outstring, "Sound Source = ");
   switch (scsp.slot[slotnum].ssctl)
   {
      case 0:
      {
         FUNC3(outstring, "External DRAM data\r\n");
         break;
      }
      case 1:
      {
         FUNC3(outstring, "Internal(Noise)\r\n");
         break;
      }
      case 2:
      {
         FUNC3(outstring, "Internal(0's)\r\n");
         break;
      }
      default:
      {
         FUNC3(outstring, "Invalid setting\r\n");
         break;
      }
   }
   FUNC3(outstring, "Source bit = ");
   switch (scsp.slot[slotnum].sbctl)
   {
      case 0:
      {
         FUNC3(outstring, "No bit reversal\r\n");
         break;
      }
      case 1:
      {
         FUNC3(outstring, "Reverse other bits\r\n");
         break;
      }
      case 2:
      {
         FUNC3(outstring, "Reverse sign bit\r\n");
         break;
      }
      case 3:
      {
         FUNC3(outstring, "Reverse sign and other bits\r\n");
         break;
      }
   }

   // Loop Control
   FUNC3(outstring, "Loop Mode = ");
   switch (scsp.slot[slotnum].lpctl)
   {
      case 0:
      {
         FUNC3(outstring, "Off\r\n");
         break;
      }
      case 1:
      {
         FUNC3(outstring, "Normal\r\n");
         break;
      }
      case 2:
      {
         FUNC3(outstring, "Reverse\r\n");
         break;
      }
      case 3:
      {
         FUNC3(outstring, "Alternating\r\n");
         break;
      }
   }
   // PCM8B
   if (scsp.slot[slotnum].pcm8b)
   {
      FUNC3(outstring, "8-bit samples\r\n");
   }
   else
   {
      FUNC3(outstring, "16-bit samples\r\n");
   }

   FUNC3(outstring, "Start Address = %05lX\r\n", (unsigned long)scsp.slot[slotnum].sa);
   FUNC3(outstring, "Loop Start Address = %04X\r\n", scsp.slot[slotnum].lsa);
   FUNC3(outstring, "Loop End Address = %04X\r\n", scsp.slot[slotnum].lea);
   FUNC3(outstring, "Decay 1 Rate = %d\r\n", scsp.slot[slotnum].dr);
   FUNC3(outstring, "Decay 2 Rate = %d\r\n", scsp.slot[slotnum].sr);
   if (scsp.slot[slotnum].eghold)
   {
      FUNC3(outstring, "EG Hold Enabled\r\n");
   }
   FUNC3(outstring, "Attack Rate = %d\r\n", scsp.slot[slotnum].ar);

   if (scsp.slot[slotnum].lpslnk)
   {
      FUNC3(outstring, "Loop Start Link Enabled\r\n");
   }

   if (scsp.slot[slotnum].krs != 0)
   {
      FUNC3(outstring, "Key rate scaling = %d\r\n", scsp.slot[slotnum].krs);
   }

   FUNC3(outstring, "Decay Level = %d\r\n", scsp.slot[slotnum].sl);
   FUNC3(outstring, "Release Rate = %d\r\n", scsp.slot[slotnum].rr);

   if (scsp.slot[slotnum].stwinh)
   {
      FUNC3(outstring, "Stack Write Inhibited\r\n");
   }

   if (scsp.slot[slotnum].sdir)
   {
      FUNC3(outstring, "Sound Direct Enabled\r\n");
   }

   FUNC3(outstring, "Total Level = %d\r\n", scsp.slot[slotnum].tl);

   FUNC3(outstring, "Modulation Level = %d\r\n", scsp.slot[slotnum].mdl);
   FUNC3(outstring, "Modulation Input X = %d\r\n", scsp.slot[slotnum].mdx);
   FUNC3(outstring, "Modulation Input Y = %d\r\n", scsp.slot[slotnum].mdy);

   FUNC3(outstring, "Octave = %d\r\n", scsp.slot[slotnum].oct);
   FUNC3(outstring, "Frequency Number Switch = %d\r\n", scsp.slot[slotnum].fns);

   FUNC3(outstring, "LFO Reset = %s\r\n", scsp.slot[slotnum].lfore ? "TRUE" : "FALSE");
   FUNC3(outstring, "LFO Frequency = %d\r\n", scsp.slot[slotnum].lfof);
   outstring = FUNC0(outstring, "LFO Frequency modulation waveform =",
                           scsp.slot[slotnum].plfos, scsp.slot[slotnum].plfows);
   FUNC3(outstring, "LFO Frequency modulation level = %d\r\n", scsp.slot[slotnum].plfos);
   outstring = FUNC0(outstring, "LFO Amplitude modulation waveform =",
                           scsp.slot[slotnum].alfos, scsp.slot[slotnum].alfows);
   FUNC3(outstring, "LFO Amplitude modulation level = %d\r\n", scsp.slot[slotnum].alfos);

   FUNC3(outstring, "Input mix level = ");
   outstring = FUNC1(outstring, scsp.slot[slotnum].imxl);
   FUNC3(outstring, "Input Select = %d\r\n", scsp.slot[slotnum].isel);

   FUNC3(outstring, "Direct data send level = ");
   outstring = FUNC1(outstring, scsp.slot[slotnum].disdl);
   FUNC3(outstring, "Direct data panpot = ");
   outstring = FUNC2(outstring, scsp.slot[slotnum].dipan);

   FUNC3(outstring, "Effect data send level = ");
   outstring = FUNC1(outstring, scsp.slot[slotnum].efsdl);
   FUNC3(outstring, "Effect data panpot = ");
   outstring = FUNC2(outstring, scsp.slot[slotnum].efpan);
}