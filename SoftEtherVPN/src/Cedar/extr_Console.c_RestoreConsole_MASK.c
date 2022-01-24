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
typedef  void termios ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void FUNC2(void *p)
{
#ifdef	OS_UNIX
	struct termios *t;
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	t = (struct termios *)p;

	// Restore the settings
	tcsetattr(0, TCSANOW, t);

	Free(t);
#else	// OS_UNIX
	if (p != NULL)
	{
		FUNC0(p);
	}
#endif	// OS_UNIX
}