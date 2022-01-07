
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugMessage (int ,char*,int ) ;
 int M64MSG_ERROR ;
 int SDL_GetError () ;
 int SDL_INIT_JOYSTICK ;
 int SDL_InitSubSystem (int ) ;
 char* SDL_JoystickName (int) ;
 int SDL_QuitSubSystem (int ) ;
 int SDL_WasInit (int ) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static const char * get_sdl_joystick_name(int iCtrlIdx)
{
    static char JoyName[256];
    const char *joySDLName;
    int joyWasInit = SDL_WasInit(SDL_INIT_JOYSTICK);


    if (!joyWasInit)
        if (SDL_InitSubSystem(SDL_INIT_JOYSTICK) == -1)
        {
            DebugMessage(M64MSG_ERROR, "Couldn't init SDL joystick subsystem: %s", SDL_GetError() );
            return ((void*)0);
        }


    joySDLName = SDL_JoystickName(iCtrlIdx);


    if (joySDLName != ((void*)0))
    {
        strncpy(JoyName, joySDLName, 255);
        JoyName[255] = 0;
    }


    if (!joyWasInit)
        SDL_QuitSubSystem(SDL_INIT_JOYSTICK);


    if (joySDLName == ((void*)0))
        return ((void*)0);
    else
        return JoyName;
}
