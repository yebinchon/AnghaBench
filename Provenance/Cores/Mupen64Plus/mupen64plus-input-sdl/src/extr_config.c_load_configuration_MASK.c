#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  m64p_handle ;
typedef  scalar_t__ eModeType ;
struct TYPE_4__ {TYPE_1__* control; } ;
struct TYPE_3__ {scalar_t__ Present; } ;

/* Variables and functions */
 scalar_t__ CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int DEVICE_NO_JOYSTICK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ E_MODE_FULL_AUTO ; 
 scalar_t__ E_MODE_MANUAL ; 
 scalar_t__ E_MODE_NAMED_AUTO ; 
 scalar_t__ M64ERR_SUCCESS ; 
 int /*<<< orphan*/  M64MSG_ERROR ; 
 int /*<<< orphan*/  M64MSG_INFO ; 
 int /*<<< orphan*/  M64MSG_WARNING ; 
 int /*<<< orphan*/  M64TYPE_FLOAT ; 
 int /*<<< orphan*/  M64TYPE_INT ; 
 int /*<<< orphan*/  M64TYPE_STRING ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_2__* controller ; 
 char* FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 int FUNC13 (int,int,int,char const*,scalar_t__*,scalar_t__*,char**) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 scalar_t__ FUNC16 (char*,char const*,int) ; 

void FUNC17(int bPreConfig)
{
    char SectionName[32];
    int joy_plugged = 0;
    int n64CtrlIdx, sdlCtrlIdx, j;
    int sdlNumDevUsed = 0;
    int sdlDevicesUsed[4];
    eModeType OrigControlMode[4], ControlMode[4];
    int ControlDevice[4];
    char DeviceName[4][256];
    int ActiveControllers = 0;
    int sdlNumJoysticks = FUNC10();
    float fVersion = 0.0f;
    const char *sdl_name;
    int ControllersFound = 0;

    /* tell user how many SDL joysticks are available */
    if (!bPreConfig)
        FUNC5(M64MSG_INFO, "%i SDL joysticks were found.", sdlNumJoysticks);

    /* loop through 4 N64 controllers, initializing and validating special section parameters */
    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        m64p_handle pConfig;
        /* reset the controller configuration */
        FUNC8(n64CtrlIdx);

        /* Open the configuration section for this controller */
        FUNC14(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);
        if (FUNC2(SectionName, &pConfig) != M64ERR_SUCCESS)
        {
            // this should never happen
            FUNC5(M64MSG_ERROR, "Couldn't open config section '%s'.  Aborting...", SectionName);
            return;
        }
        /* Check version number, and if it doesn't match: delete the config section */
        fVersion = 0.0f;
        if (FUNC1(pConfig, "version", M64TYPE_FLOAT, &fVersion, sizeof(float)) != M64ERR_SUCCESS || ((int) fVersion) != ((int) CONFIG_VERSION))
        {
            FUNC5(M64MSG_WARNING, "Missing or incompatible config section '%s'. Clearing.", SectionName);
            FUNC0(SectionName);
            // set local controller default parameters
            OrigControlMode[n64CtrlIdx] = ControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
            ControlDevice[n64CtrlIdx] = DEVICE_NO_JOYSTICK;
            DeviceName[n64CtrlIdx][0] = 0;
            // write blank config for GUI front-ends
            FUNC11(n64CtrlIdx, "", E_MODE_FULL_AUTO);
            // save it to the file too
            FUNC3(SectionName);
        }
        else
        {
            if (FUNC1(pConfig, "mode", M64TYPE_INT, &OrigControlMode[n64CtrlIdx], sizeof(int)) != M64ERR_SUCCESS ||
                (int) OrigControlMode[n64CtrlIdx] < 0 || (int) OrigControlMode[n64CtrlIdx] > 2)
            {
                if (!bPreConfig)
                    FUNC5(M64MSG_WARNING, "Missing or invalid 'mode' parameter in config section '%s'.  Setting to 2 (Fully Auto)", SectionName);
                OrigControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
            }
            ControlMode[n64CtrlIdx] = OrigControlMode[n64CtrlIdx];
            if (FUNC1(pConfig, "device", M64TYPE_INT, &ControlDevice[n64CtrlIdx], sizeof(int)) != M64ERR_SUCCESS)
            {
                if (!bPreConfig)
                    FUNC5(M64MSG_WARNING, "Missing 'device' parameter in config section '%s'.  Setting to -1 (No joystick)", SectionName);
                ControlDevice[n64CtrlIdx] = DEVICE_NO_JOYSTICK;
            }
            if (FUNC1(pConfig, "name", M64TYPE_STRING, DeviceName[n64CtrlIdx], 256) != M64ERR_SUCCESS)
            {
                DeviceName[n64CtrlIdx][0] = 0;
            }
        }
    }

    /* loop through 4 N64 controllers and set up those in Fully Manual mode */
    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        if (ControlMode[n64CtrlIdx] != E_MODE_MANUAL)
            continue;
        /* load the stored configuration (disregard any errors) */
        FUNC14(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);
        FUNC12(SectionName, n64CtrlIdx, ControlDevice[n64CtrlIdx]);
        /* if this config uses an SDL joystick, mark it as used */
        if (ControlDevice[n64CtrlIdx] == DEVICE_NO_JOYSTICK)
        {
            if (!bPreConfig)
                FUNC5(M64MSG_INFO, "N64 Controller #%i: Using manual config with no SDL joystick (keyboard/mouse only)", n64CtrlIdx+1);
        }
        else
        {
            sdlDevicesUsed[sdlNumDevUsed++] = ControlDevice[n64CtrlIdx];
            if (!bPreConfig)
                FUNC5(M64MSG_INFO, "N64 Controller #%i: Using manual config for SDL joystick %i", n64CtrlIdx+1, ControlDevice[n64CtrlIdx]);
        }
        ActiveControllers++;
    }

    /* now loop through again, setting up those in Named Auto mode */
    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        if (ControlMode[n64CtrlIdx] != E_MODE_NAMED_AUTO)
            continue;
        /* if name is empty, then use full auto mode instead */
        if (DeviceName[n64CtrlIdx][0] == 0)
        {
            ControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
            continue;
        }
        FUNC14(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);
        /* if user is looking for a keyboard, set that up */
        if (FUNC15(DeviceName[n64CtrlIdx], "Keyboard") == 0)
        {
            FUNC7(DEVICE_NO_JOYSTICK, "Keyboard");
            if (FUNC12("AutoConfig0", n64CtrlIdx, DEVICE_NO_JOYSTICK) > 0)
            {
                if (!bPreConfig)
                    FUNC5(M64MSG_INFO, "N64 Controller #%i: Using auto-config for keyboard", n64CtrlIdx+1);
                /* copy the auto-config settings to the controller config section */
                FUNC6("AutoConfig0", SectionName, "Keyboard");
                ActiveControllers++;
                FUNC3(SectionName);
            }
            else
            {
                FUNC5(M64MSG_ERROR, "Autoconfig keyboard setup invalid");
            }
            FUNC0("AutoConfig0");
            continue;
        }
        /* search for an unused SDL device with the matching name */
        for (sdlCtrlIdx=0; sdlCtrlIdx < sdlNumJoysticks; sdlCtrlIdx++)
        {
            /* check if this one is in use */
            int deviceAlreadyUsed = 0;
            for (j = 0; j < sdlNumDevUsed; j++)
            {
                if (sdlDevicesUsed[j] == sdlCtrlIdx)
                    deviceAlreadyUsed = 1;
            }
            if (deviceAlreadyUsed)
                continue;
            /* check if the name matches */
            sdl_name = FUNC9(sdlCtrlIdx);
            if (sdl_name != NULL && FUNC16(DeviceName[n64CtrlIdx], sdl_name, 255) == 0)
            {
                /* set up one or more controllers for this SDL device, if present in InputAutoConfig.ini */
                int ControllersFound = FUNC13(bPreConfig, n64CtrlIdx, sdlCtrlIdx, sdl_name, ControlMode, OrigControlMode, DeviceName);
                if (ControllersFound == 0)
                {
                    // error: no auto-config found for this SDL device
                    FUNC5(M64MSG_ERROR, "No auto-config found for joystick named '%s' in InputAutoConfig.ini", sdl_name);
                    // mark this device as being used just so we don't complain about it again
                    sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;
                    // quit looking for SDL joysticks which match the name, because there's no valid autoconfig for that name.
                    // this controller will be unused; skip to the next one
                    break;
                }
                /* mark this sdl device as used */
                sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;
                ActiveControllers += ControllersFound;
                break;
            }
        }
        /* if we didn't find a match for this joystick name, then set the controller to fully auto */
        if (sdlCtrlIdx == sdlNumJoysticks)
        {
            if (!bPreConfig)
                FUNC5(M64MSG_WARNING, "N64 Controller #%i: No SDL joystick found matching name '%s'.  Using full auto mode.", n64CtrlIdx+1, DeviceName[n64CtrlIdx]);
            ControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
        }
    }

    /* Final loop through N64 controllers, setting up those in Full Auto mode */
    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        if (ControlMode[n64CtrlIdx] != E_MODE_FULL_AUTO)
            continue;
        FUNC14(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);
        /* search for an unused SDL device */
        for (sdlCtrlIdx=0; sdlCtrlIdx < sdlNumJoysticks; sdlCtrlIdx++)
        {
            /* check if this one is in use */
            int deviceAlreadyUsed = 0;
            for (j = 0; j < sdlNumDevUsed; j++)
            {
                if (sdlDevicesUsed[j] == sdlCtrlIdx)
                    deviceAlreadyUsed = 1;
            }
            if (deviceAlreadyUsed)
                continue;
            /* set up one or more controllers for this SDL device, if present in InputAutoConfig.ini */
            sdl_name = FUNC9(sdlCtrlIdx);
            ControllersFound = FUNC13(bPreConfig, n64CtrlIdx, sdlCtrlIdx, sdl_name, ControlMode, OrigControlMode, DeviceName);
            if (!bPreConfig && ControllersFound == 0)
            {
                // error: no auto-config found for this SDL device
                FUNC5(M64MSG_ERROR, "No auto-config found for joystick named '%s' in InputAutoConfig.ini", sdl_name);
                // mark this device as being used just so we don't complain about it again
                sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;
                // keep trying more SDL devices to see if we can auto-config one for this N64 controller
                continue;
            }
            /* mark this sdl device as used */
            sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;
            ActiveControllers += ControllersFound;
            break;
        }
        /* if this N64 controller was not activated, set device to -1 */
        if (sdlCtrlIdx == sdlNumJoysticks)
        {
            m64p_handle section;
            if (FUNC2(SectionName, &section) == M64ERR_SUCCESS)
            {
                const int iNoDevice = -1;
                FUNC4(section, "device", M64TYPE_INT, &iNoDevice);
                if (OrigControlMode[n64CtrlIdx] == E_MODE_FULL_AUTO)
                    FUNC4(section, "name", M64TYPE_STRING, "");
                FUNC3(SectionName);
            }
        }
    }

    /* fallback to keyboard if no controllers were configured */
    if (ActiveControllers == 0)
    {
        if (!bPreConfig)
            FUNC5(M64MSG_INFO, "N64 Controller #1: Forcing default keyboard configuration");
        FUNC7(DEVICE_NO_JOYSTICK, "Keyboard");
        if (FUNC12("AutoConfig0", 0, DEVICE_NO_JOYSTICK) > 0)
        {
            /* copy the auto-config settings to the controller config section */
            if (OrigControlMode[0] == E_MODE_FULL_AUTO)
                FUNC6("AutoConfig0", "Input-SDL-Control1", "Keyboard");
            else
                FUNC6("AutoConfig0", "Input-SDL-Control1", NULL);  // don't overwrite 'name' parameter
            ActiveControllers++;
            FUNC3("Input-SDL-Control1");
        }
        else
        {
            FUNC5(M64MSG_ERROR, "Autoconfig keyboard setup invalid");
        }
        FUNC0("AutoConfig0");
    }

    /* see how many joysticks are plugged in */
    joy_plugged = 0;
    for (j = 0; j < 4; j++)
    {
        if (controller[j].control->Present)
            joy_plugged++;
    }

    /* print out summary info message */
    if (!bPreConfig)
    {
        if (joy_plugged > 0)
        {
            FUNC5(M64MSG_INFO, "%i controller(s) found, %i plugged in and usable in the emulator", ActiveControllers, joy_plugged);
        }
        else
        {
            if (ActiveControllers == 0)
                FUNC5(M64MSG_WARNING, "No joysticks/controllers found");
            else
                FUNC5(M64MSG_WARNING, "%i controllers found, but none were 'plugged in'", ActiveControllers);
        }
    }

}