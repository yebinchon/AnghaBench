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
struct TYPE_2__ {scalar_t__ mcieb; scalar_t__ mcipd; scalar_t__ scilv2; scalar_t__ scilv1; scalar_t__ scilv0; scalar_t__ scieb; scalar_t__ scipd; scalar_t__ timcsd; scalar_t__ timccnt; scalar_t__ timbsd; scalar_t__ timbcnt; scalar_t__ timasd; scalar_t__ timacnt; scalar_t__ dmlen; scalar_t__ drga; scalar_t__ dmea; scalar_t__ ca; scalar_t__ mslc; scalar_t__ rbp; scalar_t__ rbl; scalar_t__ mvol; scalar_t__ mem4b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (int,double) ; 
 TYPE_1__ scsp ; 

void
FUNC2 (char *outstring)
{
   FUNC0 (outstring, "Memory: %s\r\n", scsp.mem4b ? "4 Mbit" : "2 Mbit");
   FUNC0 (outstring, "Master volume: %ld\r\n", (unsigned long)scsp.mvol);
   FUNC0 (outstring, "Ring buffer length: %ld\r\n", (unsigned long)scsp.rbl);
   FUNC0 (outstring, "Ring buffer address: %08lX\r\n", (unsigned long)scsp.rbp);
   FUNC0 (outstring, "\r\n");

   FUNC0 (outstring, "Slot Status Registers\r\n");
   FUNC0 (outstring, "-----------------\r\n");
   FUNC0 (outstring, "Monitor slot: %ld\r\n", (unsigned long)scsp.mslc);
   FUNC0 (outstring, "Call address: %ld\r\n", (unsigned long)scsp.ca);
   FUNC0 (outstring, "\r\n");

   FUNC0 (outstring, "DMA Registers\r\n");
   FUNC0 (outstring, "-----------------\r\n");
   FUNC0 (outstring, "DMA memory address start: %08lX\r\n", (unsigned long)scsp.dmea);
   FUNC0 (outstring, "DMA register address start: %08lX\r\n", (unsigned long)scsp.drga);
   FUNC0 (outstring, "DMA Flags: %lX\r\n", (unsigned long)scsp.dmlen);
   FUNC0 (outstring, "\r\n");

   FUNC0 (outstring, "Timer Registers\r\n");
   FUNC0 (outstring, "-----------------\r\n");
   FUNC0 (outstring, "Timer A counter: %02lX\r\n", (unsigned long)scsp.timacnt >> 8);
   FUNC0 (outstring, "Timer A increment: Every %d sample(s)\r\n", (int)FUNC1(2, (double)scsp.timasd));
   FUNC0 (outstring, "Timer B counter: %02lX\r\n", (unsigned long)scsp.timbcnt >> 8);
   FUNC0 (outstring, "Timer B increment: Every %d sample(s)\r\n", (int)FUNC1(2, (double)scsp.timbsd));
   FUNC0 (outstring, "Timer C counter: %02lX\r\n", (unsigned long)scsp.timccnt >> 8);
   FUNC0 (outstring, "Timer C increment: Every %d sample(s)\r\n", (int)FUNC1(2, (double)scsp.timcsd));
   FUNC0 (outstring, "\r\n");

   FUNC0 (outstring, "Interrupt Registers\r\n");
   FUNC0 (outstring, "-----------------\r\n");
   FUNC0 (outstring, "Sound cpu interrupt pending: %04lX\r\n", (unsigned long)scsp.scipd);
   FUNC0 (outstring, "Sound cpu interrupt enable: %04lX\r\n", (unsigned long)scsp.scieb);
   FUNC0 (outstring, "Sound cpu interrupt level 0: %04lX\r\n", (unsigned long)scsp.scilv0);
   FUNC0 (outstring, "Sound cpu interrupt level 1: %04lX\r\n", (unsigned long)scsp.scilv1);
   FUNC0 (outstring, "Sound cpu interrupt level 2: %04lX\r\n", (unsigned long)scsp.scilv2);
   FUNC0 (outstring, "Main cpu interrupt pending: %04lX\r\n", (unsigned long)scsp.mcipd);
   FUNC0 (outstring, "Main cpu interrupt enable: %04lX\r\n", (unsigned long)scsp.mcieb);
   FUNC0 (outstring, "\r\n");
}