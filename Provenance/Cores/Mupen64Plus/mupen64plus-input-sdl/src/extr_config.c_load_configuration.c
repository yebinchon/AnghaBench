
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int m64p_handle ;
typedef scalar_t__ eModeType ;
struct TYPE_4__ {TYPE_1__* control; } ;
struct TYPE_3__ {scalar_t__ Present; } ;


 scalar_t__ CONFIG_VERSION ;
 int ConfigDeleteSection (char*) ;
 scalar_t__ ConfigGetParameter (int ,char*,int ,...) ;
 scalar_t__ ConfigOpenSection (char*,int *) ;
 int ConfigSaveSection (char*) ;
 int ConfigSetParameter (int ,char*,int ,...) ;
 int DEVICE_NO_JOYSTICK ;
 int DebugMessage (int ,char*,...) ;
 scalar_t__ E_MODE_FULL_AUTO ;
 scalar_t__ E_MODE_MANUAL ;
 scalar_t__ E_MODE_NAMED_AUTO ;
 scalar_t__ M64ERR_SUCCESS ;
 int M64MSG_ERROR ;
 int M64MSG_INFO ;
 int M64MSG_WARNING ;
 int M64TYPE_FLOAT ;
 int M64TYPE_INT ;
 int M64TYPE_STRING ;
 int auto_copy_inputconfig (char*,char*,char*) ;
 int auto_set_defaults (int,char*) ;
 int clear_controller (int) ;
 TYPE_2__* controller ;
 char* get_sdl_joystick_name (int) ;
 int get_sdl_num_joysticks () ;
 int init_controller_config (int,char*,scalar_t__) ;
 int load_controller_config (char*,int,int) ;
 int setup_auto_controllers (int,int,int,char const*,scalar_t__*,scalar_t__*,char**) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

void load_configuration(int bPreConfig)
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
    int sdlNumJoysticks = get_sdl_num_joysticks();
    float fVersion = 0.0f;
    const char *sdl_name;
    int ControllersFound = 0;


    if (!bPreConfig)
        DebugMessage(M64MSG_INFO, "%i SDL joysticks were found.", sdlNumJoysticks);


    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        m64p_handle pConfig;

        clear_controller(n64CtrlIdx);


        sprintf(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);
        if (ConfigOpenSection(SectionName, &pConfig) != M64ERR_SUCCESS)
        {

            DebugMessage(M64MSG_ERROR, "Couldn't open config section '%s'.  Aborting...", SectionName);
            return;
        }

        fVersion = 0.0f;
        if (ConfigGetParameter(pConfig, "version", M64TYPE_FLOAT, &fVersion, sizeof(float)) != M64ERR_SUCCESS || ((int) fVersion) != ((int) CONFIG_VERSION))
        {
            DebugMessage(M64MSG_WARNING, "Missing or incompatible config section '%s'. Clearing.", SectionName);
            ConfigDeleteSection(SectionName);

            OrigControlMode[n64CtrlIdx] = ControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
            ControlDevice[n64CtrlIdx] = DEVICE_NO_JOYSTICK;
            DeviceName[n64CtrlIdx][0] = 0;

            init_controller_config(n64CtrlIdx, "", E_MODE_FULL_AUTO);

            ConfigSaveSection(SectionName);
        }
        else
        {
            if (ConfigGetParameter(pConfig, "mode", M64TYPE_INT, &OrigControlMode[n64CtrlIdx], sizeof(int)) != M64ERR_SUCCESS ||
                (int) OrigControlMode[n64CtrlIdx] < 0 || (int) OrigControlMode[n64CtrlIdx] > 2)
            {
                if (!bPreConfig)
                    DebugMessage(M64MSG_WARNING, "Missing or invalid 'mode' parameter in config section '%s'.  Setting to 2 (Fully Auto)", SectionName);
                OrigControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
            }
            ControlMode[n64CtrlIdx] = OrigControlMode[n64CtrlIdx];
            if (ConfigGetParameter(pConfig, "device", M64TYPE_INT, &ControlDevice[n64CtrlIdx], sizeof(int)) != M64ERR_SUCCESS)
            {
                if (!bPreConfig)
                    DebugMessage(M64MSG_WARNING, "Missing 'device' parameter in config section '%s'.  Setting to -1 (No joystick)", SectionName);
                ControlDevice[n64CtrlIdx] = DEVICE_NO_JOYSTICK;
            }
            if (ConfigGetParameter(pConfig, "name", M64TYPE_STRING, DeviceName[n64CtrlIdx], 256) != M64ERR_SUCCESS)
            {
                DeviceName[n64CtrlIdx][0] = 0;
            }
        }
    }


    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        if (ControlMode[n64CtrlIdx] != E_MODE_MANUAL)
            continue;

        sprintf(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);
        load_controller_config(SectionName, n64CtrlIdx, ControlDevice[n64CtrlIdx]);

        if (ControlDevice[n64CtrlIdx] == DEVICE_NO_JOYSTICK)
        {
            if (!bPreConfig)
                DebugMessage(M64MSG_INFO, "N64 Controller #%i: Using manual config with no SDL joystick (keyboard/mouse only)", n64CtrlIdx+1);
        }
        else
        {
            sdlDevicesUsed[sdlNumDevUsed++] = ControlDevice[n64CtrlIdx];
            if (!bPreConfig)
                DebugMessage(M64MSG_INFO, "N64 Controller #%i: Using manual config for SDL joystick %i", n64CtrlIdx+1, ControlDevice[n64CtrlIdx]);
        }
        ActiveControllers++;
    }


    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        if (ControlMode[n64CtrlIdx] != E_MODE_NAMED_AUTO)
            continue;

        if (DeviceName[n64CtrlIdx][0] == 0)
        {
            ControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
            continue;
        }
        sprintf(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);

        if (strcasecmp(DeviceName[n64CtrlIdx], "Keyboard") == 0)
        {
            auto_set_defaults(DEVICE_NO_JOYSTICK, "Keyboard");
            if (load_controller_config("AutoConfig0", n64CtrlIdx, DEVICE_NO_JOYSTICK) > 0)
            {
                if (!bPreConfig)
                    DebugMessage(M64MSG_INFO, "N64 Controller #%i: Using auto-config for keyboard", n64CtrlIdx+1);

                auto_copy_inputconfig("AutoConfig0", SectionName, "Keyboard");
                ActiveControllers++;
                ConfigSaveSection(SectionName);
            }
            else
            {
                DebugMessage(M64MSG_ERROR, "Autoconfig keyboard setup invalid");
            }
            ConfigDeleteSection("AutoConfig0");
            continue;
        }

        for (sdlCtrlIdx=0; sdlCtrlIdx < sdlNumJoysticks; sdlCtrlIdx++)
        {

            int deviceAlreadyUsed = 0;
            for (j = 0; j < sdlNumDevUsed; j++)
            {
                if (sdlDevicesUsed[j] == sdlCtrlIdx)
                    deviceAlreadyUsed = 1;
            }
            if (deviceAlreadyUsed)
                continue;

            sdl_name = get_sdl_joystick_name(sdlCtrlIdx);
            if (sdl_name != ((void*)0) && strncmp(DeviceName[n64CtrlIdx], sdl_name, 255) == 0)
            {

                int ControllersFound = setup_auto_controllers(bPreConfig, n64CtrlIdx, sdlCtrlIdx, sdl_name, ControlMode, OrigControlMode, DeviceName);
                if (ControllersFound == 0)
                {

                    DebugMessage(M64MSG_ERROR, "No auto-config found for joystick named '%s' in InputAutoConfig.ini", sdl_name);

                    sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;


                    break;
                }

                sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;
                ActiveControllers += ControllersFound;
                break;
            }
        }

        if (sdlCtrlIdx == sdlNumJoysticks)
        {
            if (!bPreConfig)
                DebugMessage(M64MSG_WARNING, "N64 Controller #%i: No SDL joystick found matching name '%s'.  Using full auto mode.", n64CtrlIdx+1, DeviceName[n64CtrlIdx]);
            ControlMode[n64CtrlIdx] = E_MODE_FULL_AUTO;
        }
    }


    for (n64CtrlIdx=0; n64CtrlIdx < 4; n64CtrlIdx++)
    {
        if (ControlMode[n64CtrlIdx] != E_MODE_FULL_AUTO)
            continue;
        sprintf(SectionName, "Input-SDL-Control%i", n64CtrlIdx + 1);

        for (sdlCtrlIdx=0; sdlCtrlIdx < sdlNumJoysticks; sdlCtrlIdx++)
        {

            int deviceAlreadyUsed = 0;
            for (j = 0; j < sdlNumDevUsed; j++)
            {
                if (sdlDevicesUsed[j] == sdlCtrlIdx)
                    deviceAlreadyUsed = 1;
            }
            if (deviceAlreadyUsed)
                continue;

            sdl_name = get_sdl_joystick_name(sdlCtrlIdx);
            ControllersFound = setup_auto_controllers(bPreConfig, n64CtrlIdx, sdlCtrlIdx, sdl_name, ControlMode, OrigControlMode, DeviceName);
            if (!bPreConfig && ControllersFound == 0)
            {

                DebugMessage(M64MSG_ERROR, "No auto-config found for joystick named '%s' in InputAutoConfig.ini", sdl_name);

                sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;

                continue;
            }

            sdlDevicesUsed[sdlNumDevUsed++] = sdlCtrlIdx;
            ActiveControllers += ControllersFound;
            break;
        }

        if (sdlCtrlIdx == sdlNumJoysticks)
        {
            m64p_handle section;
            if (ConfigOpenSection(SectionName, &section) == M64ERR_SUCCESS)
            {
                const int iNoDevice = -1;
                ConfigSetParameter(section, "device", M64TYPE_INT, &iNoDevice);
                if (OrigControlMode[n64CtrlIdx] == E_MODE_FULL_AUTO)
                    ConfigSetParameter(section, "name", M64TYPE_STRING, "");
                ConfigSaveSection(SectionName);
            }
        }
    }


    if (ActiveControllers == 0)
    {
        if (!bPreConfig)
            DebugMessage(M64MSG_INFO, "N64 Controller #1: Forcing default keyboard configuration");
        auto_set_defaults(DEVICE_NO_JOYSTICK, "Keyboard");
        if (load_controller_config("AutoConfig0", 0, DEVICE_NO_JOYSTICK) > 0)
        {

            if (OrigControlMode[0] == E_MODE_FULL_AUTO)
                auto_copy_inputconfig("AutoConfig0", "Input-SDL-Control1", "Keyboard");
            else
                auto_copy_inputconfig("AutoConfig0", "Input-SDL-Control1", ((void*)0));
            ActiveControllers++;
            ConfigSaveSection("Input-SDL-Control1");
        }
        else
        {
            DebugMessage(M64MSG_ERROR, "Autoconfig keyboard setup invalid");
        }
        ConfigDeleteSection("AutoConfig0");
    }


    joy_plugged = 0;
    for (j = 0; j < 4; j++)
    {
        if (controller[j].control->Present)
            joy_plugged++;
    }


    if (!bPreConfig)
    {
        if (joy_plugged > 0)
        {
            DebugMessage(M64MSG_INFO, "%i controller(s) found, %i plugged in and usable in the emulator", ActiveControllers, joy_plugged);
        }
        else
        {
            if (ActiveControllers == 0)
                DebugMessage(M64MSG_WARNING, "No joysticks/controllers found");
            else
                DebugMessage(M64MSG_WARNING, "%i controllers found, but none were 'plugged in'", ActiveControllers);
        }
    }

}
