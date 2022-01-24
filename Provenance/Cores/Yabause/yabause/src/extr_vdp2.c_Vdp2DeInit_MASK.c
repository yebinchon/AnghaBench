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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Vdp2ColorRam ; 
 int /*<<< orphan*/ * Vdp2Ram ; 
 int /*<<< orphan*/ * Vdp2Regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void) {
   if (Vdp2Regs)
      FUNC2(Vdp2Regs);
   Vdp2Regs = NULL;

   if (Vdp2Ram)
      FUNC0(Vdp2Ram);
   Vdp2Ram = NULL;

   if (Vdp2ColorRam)
      FUNC1(Vdp2ColorRam);
   Vdp2ColorRam = NULL;
}