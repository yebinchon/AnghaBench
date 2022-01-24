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
struct TYPE_2__ {scalar_t__ dotsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKTYPE_26MHZ ; 
 int /*<<< orphan*/  MSH2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* SmpcInternalVars ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void) {
   // Reset VDP1, VDP2, SCU, and SCSP
   FUNC3();
   FUNC4();
   FUNC2();
   FUNC1();

   // Clear VDP1/VDP2 ram

   FUNC6();

   // change clock
   FUNC5(CLKTYPE_26MHZ);

   // Set DOTSEL
   SmpcInternalVars->dotsel = 0;

   // Send NMI
   FUNC0(MSH2);
}