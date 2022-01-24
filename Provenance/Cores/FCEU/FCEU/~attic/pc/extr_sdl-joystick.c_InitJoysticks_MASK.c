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
 int /*<<< orphan*/ * Joysticks ; 
 int MAX_JOYSTICKS ; 
 int /*<<< orphan*/  SDL_INIT_JOYSTICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int jinited ; 

int FUNC3 (void)
{
	int n;			/* joystick index */
	int total;

        FUNC0(SDL_INIT_JOYSTICK);
	total=FUNC2();
	if(total>MAX_JOYSTICKS) total=MAX_JOYSTICKS;

	for (n = 0; n < total; n++)
	{
 	 /* Open the joystick under SDL. */
	 Joysticks[n] = FUNC1(n);
	 //printf("Could not open joystick %d: %s.\n",
	 //joy[n] - 1, SDL_GetError());
 	 continue;
	}
	jinited=1;
	return(1);
}