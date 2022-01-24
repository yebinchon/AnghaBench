#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dgate; int ddir; int dexe; int tima; int tactl; int timb; int tbctl; int timc; int tcctl; int /*<<< orphan*/  mcieb; int /*<<< orphan*/  mcipd; int /*<<< orphan*/  scilv2; int /*<<< orphan*/  scilv1; int /*<<< orphan*/  scilv0; int /*<<< orphan*/  scieb; int /*<<< orphan*/  scipd; int /*<<< orphan*/  drga; scalar_t__ dmea; int /*<<< orphan*/  mslc; scalar_t__ rbp; int /*<<< orphan*/  rbl; int /*<<< orphan*/  mvol; scalar_t__ mem4mb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int FUNC1 (int) ; 
 TYPE_1__ scsp ; 

void FUNC2(char *outstring)
{
   FUNC0(outstring, "Memory: %s\r\n", scsp.mem4mb ? "4 Mbit" : "2 Mbit");
   FUNC0(outstring, "Master volume: %d\r\n", scsp.mvol);
   FUNC0(outstring, "Ring buffer length: %d\r\n", scsp.rbl);
   FUNC0(outstring, "Ring buffer address: %08lX\r\n", (unsigned long)scsp.rbp);
   FUNC0(outstring, "\r\n");

   FUNC0(outstring, "Slot Status Registers\r\n");
   FUNC0(outstring, "-----------------\r\n");
   FUNC0(outstring, "Monitor slot: %d\r\n", scsp.mslc);
   FUNC0(outstring, "Call address: %d\r\n", (FUNC1(0x408) >> 7) & 0xF);
   FUNC0(outstring, "\r\n");

   FUNC0(outstring, "DMA Registers\r\n");
   FUNC0(outstring, "-----------------\r\n");
   FUNC0(outstring, "DMA memory address start: %08lX\r\n", (unsigned long)scsp.dmea);
   FUNC0(outstring, "DMA register address start: %03X\r\n", scsp.drga);
   FUNC0(outstring, "DMA Flags: %02X (%cDGATE %cDDIR %cDEXE)\r\n",
             scsp.dgate<<6 | scsp.ddir<<5 | scsp.dexe<<4,
             scsp.dgate ? '+' : '-', scsp.ddir ? '+' : '-',
             scsp.dexe ? '+' : '-');
   FUNC0(outstring, "\r\n");

   FUNC0(outstring, "Timer Registers\r\n");
   FUNC0(outstring, "-----------------\r\n");
   FUNC0(outstring, "Timer A counter: %02X\r\n", scsp.tima >> 8);
   FUNC0(outstring, "Timer A increment: Every %d sample(s)\r\n", 1 << scsp.tactl);
   FUNC0(outstring, "Timer B counter: %02X\r\n", scsp.timb >> 8);
   FUNC0(outstring, "Timer B increment: Every %d sample(s)\r\n", 1 << scsp.tbctl);
   FUNC0(outstring, "Timer C counter: %02X\r\n", scsp.timc >> 8);
   FUNC0(outstring, "Timer C increment: Every %d sample(s)\r\n", 1 << scsp.tcctl);
   FUNC0(outstring, "\r\n");

   FUNC0(outstring, "Interrupt Registers\r\n");
   FUNC0(outstring, "-----------------\r\n");
   FUNC0(outstring, "Sound cpu interrupt pending: %04X\r\n", scsp.scipd);
   FUNC0(outstring, "Sound cpu interrupt enable: %04X\r\n", scsp.scieb);
   FUNC0(outstring, "Sound cpu interrupt level 0: %04X\r\n", scsp.scilv0);
   FUNC0(outstring, "Sound cpu interrupt level 1: %04X\r\n", scsp.scilv1);
   FUNC0(outstring, "Sound cpu interrupt level 2: %04X\r\n", scsp.scilv2);
   FUNC0(outstring, "Main cpu interrupt pending: %04X\r\n", scsp.mcipd);
   FUNC0(outstring, "Main cpu interrupt enable: %04X\r\n", scsp.mcieb);
   FUNC0(outstring, "\r\n");
}