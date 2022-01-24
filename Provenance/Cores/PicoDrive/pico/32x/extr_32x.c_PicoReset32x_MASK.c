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
 int /*<<< orphan*/  P32XI_VRES ; 
 int PAHW_32X ; 
 int PicoAHW ; 
 int /*<<< orphan*/  SH2_IDLE_STATES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  msh2 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssh2 ; 

void FUNC5(void)
{
  if (PicoAHW & PAHW_32X) {
    FUNC4(NULL, FUNC0(), P32XI_VRES);
    FUNC2(&msh2, SH2_IDLE_STATES, 0);
    FUNC2(&ssh2, SH2_IDLE_STATES, 0);
    FUNC1();
    FUNC3();
  }
}