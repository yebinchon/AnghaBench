
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {TYPE_1__* slot; } ;
struct TYPE_3__ {int ssctl; int sbctl; int lpctl; int efpan; int efsdl; int dipan; int disdl; int isel; int imxl; int alfos; int alfows; int plfos; int plfows; int lfof; scalar_t__ lfore; int fns; int oct; int mdy; int mdx; int mdl; int tl; scalar_t__ sdir; scalar_t__ stwinh; int rr; int sl; int krs; scalar_t__ lpslnk; int ar; scalar_t__ eghold; int sr; int dr; int lea; int lsa; scalar_t__ sa; scalar_t__ pcm8b; } ;


 char* AddSoundLFO (char*,char*,int ,int ) ;
 char* AddSoundLevel (char*,int ) ;
 char* AddSoundPan (char*,int ) ;
 int AddString (char*,char*,...) ;
 TYPE_2__ scsp ;

void ScspSlotDebugStats(u8 slotnum, char *outstring)
{
   AddString(outstring, "Sound Source = ");
   switch (scsp.slot[slotnum].ssctl)
   {
      case 0:
      {
         AddString(outstring, "External DRAM data\r\n");
         break;
      }
      case 1:
      {
         AddString(outstring, "Internal(Noise)\r\n");
         break;
      }
      case 2:
      {
         AddString(outstring, "Internal(0's)\r\n");
         break;
      }
      default:
      {
         AddString(outstring, "Invalid setting\r\n");
         break;
      }
   }
   AddString(outstring, "Source bit = ");
   switch (scsp.slot[slotnum].sbctl)
   {
      case 0:
      {
         AddString(outstring, "No bit reversal\r\n");
         break;
      }
      case 1:
      {
         AddString(outstring, "Reverse other bits\r\n");
         break;
      }
      case 2:
      {
         AddString(outstring, "Reverse sign bit\r\n");
         break;
      }
      case 3:
      {
         AddString(outstring, "Reverse sign and other bits\r\n");
         break;
      }
   }


   AddString(outstring, "Loop Mode = ");
   switch (scsp.slot[slotnum].lpctl)
   {
      case 0:
      {
         AddString(outstring, "Off\r\n");
         break;
      }
      case 1:
      {
         AddString(outstring, "Normal\r\n");
         break;
      }
      case 2:
      {
         AddString(outstring, "Reverse\r\n");
         break;
      }
      case 3:
      {
         AddString(outstring, "Alternating\r\n");
         break;
      }
   }

   if (scsp.slot[slotnum].pcm8b)
   {
      AddString(outstring, "8-bit samples\r\n");
   }
   else
   {
      AddString(outstring, "16-bit samples\r\n");
   }

   AddString(outstring, "Start Address = %05lX\r\n", (unsigned long)scsp.slot[slotnum].sa);
   AddString(outstring, "Loop Start Address = %04X\r\n", scsp.slot[slotnum].lsa);
   AddString(outstring, "Loop End Address = %04X\r\n", scsp.slot[slotnum].lea);
   AddString(outstring, "Decay 1 Rate = %d\r\n", scsp.slot[slotnum].dr);
   AddString(outstring, "Decay 2 Rate = %d\r\n", scsp.slot[slotnum].sr);
   if (scsp.slot[slotnum].eghold)
   {
      AddString(outstring, "EG Hold Enabled\r\n");
   }
   AddString(outstring, "Attack Rate = %d\r\n", scsp.slot[slotnum].ar);

   if (scsp.slot[slotnum].lpslnk)
   {
      AddString(outstring, "Loop Start Link Enabled\r\n");
   }

   if (scsp.slot[slotnum].krs != 0)
   {
      AddString(outstring, "Key rate scaling = %d\r\n", scsp.slot[slotnum].krs);
   }

   AddString(outstring, "Decay Level = %d\r\n", scsp.slot[slotnum].sl);
   AddString(outstring, "Release Rate = %d\r\n", scsp.slot[slotnum].rr);

   if (scsp.slot[slotnum].stwinh)
   {
      AddString(outstring, "Stack Write Inhibited\r\n");
   }

   if (scsp.slot[slotnum].sdir)
   {
      AddString(outstring, "Sound Direct Enabled\r\n");
   }

   AddString(outstring, "Total Level = %d\r\n", scsp.slot[slotnum].tl);

   AddString(outstring, "Modulation Level = %d\r\n", scsp.slot[slotnum].mdl);
   AddString(outstring, "Modulation Input X = %d\r\n", scsp.slot[slotnum].mdx);
   AddString(outstring, "Modulation Input Y = %d\r\n", scsp.slot[slotnum].mdy);

   AddString(outstring, "Octave = %d\r\n", scsp.slot[slotnum].oct);
   AddString(outstring, "Frequency Number Switch = %d\r\n", scsp.slot[slotnum].fns);

   AddString(outstring, "LFO Reset = %s\r\n", scsp.slot[slotnum].lfore ? "TRUE" : "FALSE");
   AddString(outstring, "LFO Frequency = %d\r\n", scsp.slot[slotnum].lfof);
   outstring = AddSoundLFO(outstring, "LFO Frequency modulation waveform =",
                           scsp.slot[slotnum].plfos, scsp.slot[slotnum].plfows);
   AddString(outstring, "LFO Frequency modulation level = %d\r\n", scsp.slot[slotnum].plfos);
   outstring = AddSoundLFO(outstring, "LFO Amplitude modulation waveform =",
                           scsp.slot[slotnum].alfos, scsp.slot[slotnum].alfows);
   AddString(outstring, "LFO Amplitude modulation level = %d\r\n", scsp.slot[slotnum].alfos);

   AddString(outstring, "Input mix level = ");
   outstring = AddSoundLevel(outstring, scsp.slot[slotnum].imxl);
   AddString(outstring, "Input Select = %d\r\n", scsp.slot[slotnum].isel);

   AddString(outstring, "Direct data send level = ");
   outstring = AddSoundLevel(outstring, scsp.slot[slotnum].disdl);
   AddString(outstring, "Direct data panpot = ");
   outstring = AddSoundPan(outstring, scsp.slot[slotnum].dipan);

   AddString(outstring, "Effect data send level = ");
   outstring = AddSoundLevel(outstring, scsp.slot[slotnum].efsdl);
   AddString(outstring, "Effect data panpot = ");
   outstring = AddSoundPan(outstring, scsp.slot[slotnum].efpan);
}
