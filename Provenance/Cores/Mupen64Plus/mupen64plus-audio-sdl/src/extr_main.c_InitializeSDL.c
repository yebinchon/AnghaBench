
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugMessage (int ,char*) ;
 int M64MSG_ERROR ;
 int M64MSG_INFO ;
 int SDL_INIT_AUDIO ;
 int SDL_INIT_TIMER ;
 scalar_t__ SDL_Init (int) ;
 int critical_failure ;

__attribute__((used)) static void InitializeSDL(void)
{
    DebugMessage(M64MSG_INFO, "Initializing SDL audio subsystem...");

    if(SDL_Init(SDL_INIT_AUDIO | SDL_INIT_TIMER) < 0)
    {
        DebugMessage(M64MSG_ERROR, "Failed to initialize SDL audio subsystem; forcing exit.\n");
        critical_failure = 1;
        return;
    }
    critical_failure = 0;

}
