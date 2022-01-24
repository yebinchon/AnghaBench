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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int PAD_BUTTON_A ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int PAD_TRIGGER_Z ; 
 int /*<<< orphan*/  SYS_HOTRESET ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int reload_timer ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9()
{
	u32 level;

	FUNC1();

	if(reload_timer > 0)
		FUNC7("\n\tReloading in %d seconds\n", reload_timer/50);

	while ( 1 )
	{
		FUNC2();

		int buttonsDown = FUNC0(0);

		if( (buttonsDown & PAD_TRIGGER_Z) || FUNC3() ||
			reload_timer == 0 )
		{
			FUNC7("\n\tReload\n\n\n");
			FUNC5(level);
			FUNC6 ();
		}

		if ( buttonsDown & PAD_BUTTON_A )
		{
			FUNC7("\n\tReset\n\n\n");
#if defined(HW_DOL)
			SYS_ResetSystem(SYS_HOTRESET,0,FALSE);
#else
			FUNC6 ();
#endif
		}

		FUNC8(20000);
		if(reload_timer > 0)
			reload_timer--;
	}
}