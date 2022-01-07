
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ eModeType ;


 int ConfigDeleteSection (char*) ;
 int ConfigSaveSection (char*) ;
 int DebugMessage (int ,char*,...) ;
 scalar_t__ E_MODE_FULL_AUTO ;
 scalar_t__ E_MODE_MANUAL ;
 scalar_t__ E_MODE_NAMED_AUTO ;
 int M64MSG_ERROR ;
 int M64MSG_INFO ;
 int auto_copy_inputconfig (char*,char*,char const*) ;
 int auto_set_defaults (int,char const*) ;
 scalar_t__ load_controller_config (char*,int,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int setup_auto_controllers(int bPreConfig, int n64CtrlStart, int sdlCtrlIdx, const char *sdlJoyName, eModeType ControlMode[], eModeType OrigControlMode[], char DeviceName[][256])
{
    char SectionName[32];
    int ActiveControllers = 0;
    int j;


    int ControllersFound = auto_set_defaults(sdlCtrlIdx, sdlJoyName);
    if (ControllersFound == 0)
        return 0;


    sprintf(SectionName, "Input-SDL-Control%i", n64CtrlStart + 1);
    if (OrigControlMode[n64CtrlStart] == E_MODE_FULL_AUTO)
        auto_copy_inputconfig("AutoConfig0", SectionName, sdlJoyName);
    else
        auto_copy_inputconfig("AutoConfig0", SectionName, ((void*)0));
    if (load_controller_config("AutoConfig0", n64CtrlStart, sdlCtrlIdx) > 0)
    {
        if (!bPreConfig)
            DebugMessage(M64MSG_INFO, "N64 Controller #%i: Using auto-config with SDL joystick %i ('%s')", n64CtrlStart+1, sdlCtrlIdx, sdlJoyName);
        ActiveControllers++;
        ConfigSaveSection(SectionName);
    }
    else
    {
        if (!bPreConfig)
            DebugMessage(M64MSG_ERROR, "Autoconfig data invalid for SDL joystick '%s'", sdlJoyName);
    }
    ConfigDeleteSection("AutoConfig0");


    if (ControllersFound > 1)
    {
        for (j = 1; j < ControllersFound; j++)
        {
            char AutoSectionName[32];
            sprintf(AutoSectionName, "AutoConfig%i", j);

            if (n64CtrlStart + j >= 4)
            {
                ConfigDeleteSection(AutoSectionName);
                continue;
            }

            if (ControlMode[n64CtrlStart+j] == E_MODE_FULL_AUTO ||
                (ControlMode[n64CtrlStart+j] == E_MODE_NAMED_AUTO && strncmp(DeviceName[n64CtrlStart+j], sdlJoyName, 255) == 0))
            {
                sprintf(SectionName, "Input-SDL-Control%i", n64CtrlStart + j + 1);

                if (load_controller_config(AutoSectionName, n64CtrlStart+j, sdlCtrlIdx) > 0)
                {

                    if (OrigControlMode[n64CtrlStart+j] == E_MODE_FULL_AUTO)
                        auto_copy_inputconfig(AutoSectionName, SectionName, sdlJoyName);
                    else
                        auto_copy_inputconfig(AutoSectionName, SectionName, ((void*)0));
                    if (!bPreConfig)
                        DebugMessage(M64MSG_INFO, "N64 Controller #%i: Using auto-config with SDL joystick %i ('%s')", n64CtrlStart+j+1, sdlCtrlIdx, sdlJoyName);
                    ActiveControllers++;
                    ConfigSaveSection(SectionName);

                    ControlMode[n64CtrlStart+j] = E_MODE_MANUAL;
                }
                else
                {
                    if (!bPreConfig)
                        DebugMessage(M64MSG_ERROR, "Autoconfig data invalid for SDL device '%s'", sdlJoyName);
                }

                ConfigDeleteSection(AutoSectionName);
            }
        }
    }

    return ActiveControllers;
}
