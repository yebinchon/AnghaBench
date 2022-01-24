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
typedef  scalar_t__ eModeType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ E_MODE_FULL_AUTO ; 
 scalar_t__ E_MODE_MANUAL ; 
 scalar_t__ E_MODE_NAMED_AUTO ; 
 int /*<<< orphan*/  M64MSG_ERROR ; 
 int /*<<< orphan*/  M64MSG_INFO ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 int FUNC4 (int,char const*) ; 
 scalar_t__ FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC8(int bPreConfig, int n64CtrlStart, int sdlCtrlIdx, const char *sdlJoyName, eModeType ControlMode[], eModeType OrigControlMode[], char DeviceName[][256])
{
    char SectionName[32];
    int ActiveControllers = 0;
    int j;

    /* create auto-config section(s) for this joystick (if this joystick is in the InputAutoConfig.ini) */
    int ControllersFound = FUNC4(sdlCtrlIdx, sdlJoyName);
    if (ControllersFound == 0)
        return 0;

    /* copy the auto-config settings to the controller config section, and load our plugin joystick config from this */
    FUNC6(SectionName, "Input-SDL-Control%i", n64CtrlStart + 1);
    if (OrigControlMode[n64CtrlStart] == E_MODE_FULL_AUTO)
        FUNC3("AutoConfig0", SectionName, sdlJoyName);
    else
        FUNC3("AutoConfig0", SectionName, NULL);  // don't overwrite 'name' parameter if original mode was "named auto"
    if (FUNC5("AutoConfig0", n64CtrlStart, sdlCtrlIdx) > 0)
    {
        if (!bPreConfig)
            FUNC2(M64MSG_INFO, "N64 Controller #%i: Using auto-config with SDL joystick %i ('%s')", n64CtrlStart+1, sdlCtrlIdx, sdlJoyName);
        ActiveControllers++;
        FUNC1(SectionName);
    }
    else
    {
        if (!bPreConfig)
            FUNC2(M64MSG_ERROR, "Autoconfig data invalid for SDL joystick '%s'", sdlJoyName);
    }
    FUNC0("AutoConfig0");

    /* we have to handle the unfortunate case of a USB device mapping more than > 1 controller */
    if (ControllersFound > 1)
    {
        for (j = 1; j < ControllersFound; j++)
        {
            char AutoSectionName[32];
            FUNC6(AutoSectionName, "AutoConfig%i", j);
            /* if this would be > 4th controller, then just delete the auto-config */
            if (n64CtrlStart + j >= 4)
            {
                FUNC0(AutoSectionName);
                continue;
            }
            /* look for another N64 controller that is in AUTO mode */
            if (ControlMode[n64CtrlStart+j] == E_MODE_FULL_AUTO ||
                (ControlMode[n64CtrlStart+j] == E_MODE_NAMED_AUTO && FUNC7(DeviceName[n64CtrlStart+j], sdlJoyName, 255) == 0))
            {
                FUNC6(SectionName, "Input-SDL-Control%i", n64CtrlStart + j + 1);
                /* load our plugin joystick settings from the autoconfig */
                if (FUNC5(AutoSectionName, n64CtrlStart+j, sdlCtrlIdx) > 0)
                {
                    /* copy the auto-config settings to the controller config section */
                    if (OrigControlMode[n64CtrlStart+j] == E_MODE_FULL_AUTO)
                        FUNC3(AutoSectionName, SectionName, sdlJoyName);
                    else
                        FUNC3(AutoSectionName, SectionName, NULL);  // don't overwrite 'name' parameter if original mode was "named auto"
                    if (!bPreConfig)
                        FUNC2(M64MSG_INFO, "N64 Controller #%i: Using auto-config with SDL joystick %i ('%s')", n64CtrlStart+j+1, sdlCtrlIdx, sdlJoyName);
                    ActiveControllers++;
                    FUNC1(SectionName);
                    /* set the local controller mode to Manual so that we won't re-configure this controller in the next loop */
                    ControlMode[n64CtrlStart+j] = E_MODE_MANUAL;
                }
                else
                {
                    if (!bPreConfig)
                        FUNC2(M64MSG_ERROR, "Autoconfig data invalid for SDL device '%s'", sdlJoyName);
                }
                /* delete the autoconfig section */
                FUNC0(AutoSectionName);
            }
        }
    }

    return ActiveControllers;
}