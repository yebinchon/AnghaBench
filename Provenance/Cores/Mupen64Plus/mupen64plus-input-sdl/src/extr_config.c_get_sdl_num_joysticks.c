
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugMessage (int ,char*,int ) ;
 int M64MSG_ERROR ;
 int SDL_GetError () ;
 int SDL_INIT_JOYSTICK ;
 int SDL_InitSubSystem (int ) ;
 int SDL_NumJoysticks () ;
 int SDL_QuitSubSystem (int ) ;
 int SDL_WasInit (int ) ;

__attribute__((used)) static int get_sdl_num_joysticks(void)
{
    int numJoysticks = 0;
    int joyWasInit = SDL_WasInit(SDL_INIT_JOYSTICK);


    if (!joyWasInit)
        if (SDL_InitSubSystem(SDL_INIT_JOYSTICK) == -1)
        {
            DebugMessage(M64MSG_ERROR, "Couldn't init SDL joystick subsystem: %s", SDL_GetError() );
            return 0;
        }


    numJoysticks = SDL_NumJoysticks();


    if (!joyWasInit)
        SDL_QuitSubSystem(SDL_INIT_JOYSTICK);

    return numJoysticks;
}
