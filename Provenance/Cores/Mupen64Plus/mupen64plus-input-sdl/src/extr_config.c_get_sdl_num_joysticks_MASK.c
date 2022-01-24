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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M64MSG_ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SDL_INIT_JOYSTICK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
    int numJoysticks = 0;
    int joyWasInit = FUNC5(SDL_INIT_JOYSTICK);
    
    /* initialize the joystick subsystem if necessary */
    if (!joyWasInit)
        if (FUNC2(SDL_INIT_JOYSTICK) == -1)
        {
            FUNC0(M64MSG_ERROR, "Couldn't init SDL joystick subsystem: %s", FUNC1() );
            return 0;
        }

    /* get thenumber of joysticks */
    numJoysticks = FUNC3();

    /* quit the joystick subsystem if necessary */
    if (!joyWasInit)
        FUNC4(SDL_INIT_JOYSTICK);

    return numJoysticks;
}