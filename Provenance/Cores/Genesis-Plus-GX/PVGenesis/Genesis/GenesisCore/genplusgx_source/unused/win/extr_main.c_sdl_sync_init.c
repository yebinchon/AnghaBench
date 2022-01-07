
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ticks; int sem_sync; } ;


 int MessageBox (int *,char*,char*,int ) ;
 int SDL_CreateSemaphore (int ) ;
 int SDL_INIT_EVENTTHREAD ;
 int SDL_INIT_TIMER ;
 scalar_t__ SDL_InitSubSystem (int) ;
 TYPE_1__ sdl_sync ;

__attribute__((used)) static int sdl_sync_init()
{
  if(SDL_InitSubSystem(SDL_INIT_TIMER|SDL_INIT_EVENTTHREAD) < 0)
  {
    MessageBox(((void*)0), "SDL Timer initialization failed", "Error", 0);
    return 0;
  }

  sdl_sync.sem_sync = SDL_CreateSemaphore(0);
  sdl_sync.ticks = 0;
  return 1;
}
