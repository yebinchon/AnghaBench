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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HighWram ; 
 int /*<<< orphan*/  LowWram ; 
 int /*<<< orphan*/  MSH2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC10(void) {
   FUNC2(MSH2);
   FUNC8();
   FUNC9(HighWram, 0, 0x100000);
   FUNC9(LowWram, 0, 0x100000);

   // Reset CS0 area here
   // Reset CS1 area here
   FUNC0();
   FUNC4();
   FUNC3();
   FUNC6();
   FUNC7();
   FUNC5();

   FUNC1(MSH2);
}