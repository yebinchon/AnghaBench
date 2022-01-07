
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int which; } ;
struct TYPE_5__ {int type; TYPE_1__ jdevice; } ;
typedef TYPE_2__ SDL_Event ;


 int SDL_CONTROLLERDEVICEREMAPPED ;
 int SDL_FlushEvents (int ,int ) ;
 int SDL_GETEVENT ;
 int SDL_JOYAXISMOTION ;


 int SDL_JoystickUpdate () ;
 scalar_t__ SDL_PeepEvents (TYPE_2__*,int,int ,int,int) ;
 int SDL_PumpEvents () ;
 int sdl_pad_connect (int ) ;
 int sdl_pad_disconnect (int ) ;

__attribute__((used)) static void sdl_joypad_poll(void)
{
   SDL_JoystickUpdate();

}
