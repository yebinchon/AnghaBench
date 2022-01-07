
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ SDL_Event ;


 int CloseGame () ;
 scalar_t__ SDL_PollEvent (TYPE_1__*) ;

 int puts (char*) ;

void UpdatePhysicalInput(void)
{
 SDL_Event event;

 while(SDL_PollEvent(&event))
 {
  switch(event.type)
  {


   case 128: CloseGame();puts("Quit");break;
  }


 }

}
