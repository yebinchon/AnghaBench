
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dgate; int ddir; int dexe; int tima; int tactl; int timb; int tbctl; int timc; int tcctl; int mcieb; int mcipd; int scilv2; int scilv1; int scilv0; int scieb; int scipd; int drga; scalar_t__ dmea; int mslc; scalar_t__ rbp; int rbl; int mvol; scalar_t__ mem4mb; } ;


 int AddString (char*,char*,...) ;
 int ScspReadWordDirect (int) ;
 TYPE_1__ scsp ;

void ScspCommonControlRegisterDebugStats(char *outstring)
{
   AddString(outstring, "Memory: %s\r\n", scsp.mem4mb ? "4 Mbit" : "2 Mbit");
   AddString(outstring, "Master volume: %d\r\n", scsp.mvol);
   AddString(outstring, "Ring buffer length: %d\r\n", scsp.rbl);
   AddString(outstring, "Ring buffer address: %08lX\r\n", (unsigned long)scsp.rbp);
   AddString(outstring, "\r\n");

   AddString(outstring, "Slot Status Registers\r\n");
   AddString(outstring, "-----------------\r\n");
   AddString(outstring, "Monitor slot: %d\r\n", scsp.mslc);
   AddString(outstring, "Call address: %d\r\n", (ScspReadWordDirect(0x408) >> 7) & 0xF);
   AddString(outstring, "\r\n");

   AddString(outstring, "DMA Registers\r\n");
   AddString(outstring, "-----------------\r\n");
   AddString(outstring, "DMA memory address start: %08lX\r\n", (unsigned long)scsp.dmea);
   AddString(outstring, "DMA register address start: %03X\r\n", scsp.drga);
   AddString(outstring, "DMA Flags: %02X (%cDGATE %cDDIR %cDEXE)\r\n",
             scsp.dgate<<6 | scsp.ddir<<5 | scsp.dexe<<4,
             scsp.dgate ? '+' : '-', scsp.ddir ? '+' : '-',
             scsp.dexe ? '+' : '-');
   AddString(outstring, "\r\n");

   AddString(outstring, "Timer Registers\r\n");
   AddString(outstring, "-----------------\r\n");
   AddString(outstring, "Timer A counter: %02X\r\n", scsp.tima >> 8);
   AddString(outstring, "Timer A increment: Every %d sample(s)\r\n", 1 << scsp.tactl);
   AddString(outstring, "Timer B counter: %02X\r\n", scsp.timb >> 8);
   AddString(outstring, "Timer B increment: Every %d sample(s)\r\n", 1 << scsp.tbctl);
   AddString(outstring, "Timer C counter: %02X\r\n", scsp.timc >> 8);
   AddString(outstring, "Timer C increment: Every %d sample(s)\r\n", 1 << scsp.tcctl);
   AddString(outstring, "\r\n");

   AddString(outstring, "Interrupt Registers\r\n");
   AddString(outstring, "-----------------\r\n");
   AddString(outstring, "Sound cpu interrupt pending: %04X\r\n", scsp.scipd);
   AddString(outstring, "Sound cpu interrupt enable: %04X\r\n", scsp.scieb);
   AddString(outstring, "Sound cpu interrupt level 0: %04X\r\n", scsp.scilv0);
   AddString(outstring, "Sound cpu interrupt level 1: %04X\r\n", scsp.scilv1);
   AddString(outstring, "Sound cpu interrupt level 2: %04X\r\n", scsp.scilv2);
   AddString(outstring, "Main cpu interrupt pending: %04X\r\n", scsp.mcipd);
   AddString(outstring, "Main cpu interrupt enable: %04X\r\n", scsp.mcieb);
   AddString(outstring, "\r\n");
}
