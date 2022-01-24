#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int VBR; scalar_t__* R; scalar_t__ PC; } ;
struct TYPE_11__ {TYPE_4__ regs; } ;
struct TYPE_10__ {int IsSSH2Running; scalar_t__ emulatebios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_2__* CurrentSH2 ; 
 TYPE_2__* MSH2 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*) ; 
 TYPE_2__* SSH2 ; 
 TYPE_1__ yabsys ; 

void FUNC7(void) {
   if (yabsys.emulatebios)
   {
      CurrentSH2 = SSH2;
      FUNC2(0xFFFFFFE0, 0xA55A03F1); // BCR1
      FUNC2(0xFFFFFFE4, 0xA55A00FC); // BCR2
      FUNC2(0xFFFFFFE8, 0xA55A5555); // WCR
      FUNC2(0xFFFFFFEC, 0xA55A0070); // MCR

      FUNC3(0xFFFFFEE0, 0x0000); // ICR
      FUNC3(0xFFFFFEE2, 0x0000); // IPRA
      FUNC3(0xFFFFFE60, 0x0F00); // VCRWDT
      FUNC3(0xFFFFFE62, 0x6061); // VCRA
      FUNC3(0xFFFFFE64, 0x6263); // VCRB
      FUNC3(0xFFFFFE66, 0x6465); // VCRC
      FUNC3(0xFFFFFE68, 0x6600); // VCRD
      FUNC3(0xFFFFFEE4, 0x6869); // VCRWDT
      FUNC2(0xFFFFFFA8, 0x0000006C); // VCRDMA1
      FUNC2(0xFFFFFFA0, 0x0000006D); // VCRDMA0
      FUNC2(0xFFFFFF0C, 0x0000006E); // VCRDIV
      FUNC2(0xFFFFFE10, 0x00000081); // TIER
      CurrentSH2 = MSH2;

      FUNC4(SSH2, &SSH2->regs);
      SSH2->regs.R[15] = FUNC0();
      SSH2->regs.VBR = 0x06000400;
      SSH2->regs.PC = FUNC1(0x06000250);
      if (FUNC1(0x060002AC) != 0)
         SSH2->regs.R[15] = FUNC1(0x060002AC);
      FUNC6(SSH2, &SSH2->regs);
   }
   else
      FUNC5(SSH2);

   yabsys.IsSSH2Running = 1;
}