
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixels; int pitch; } ;


 scalar_t__ SDL_LockSurface (TYPE_1__*) ;
 int fatal_error (char*) ;
 int sdl_pitch ;
 unsigned char* sdl_pixels ;
 TYPE_1__* surface ;

void sdl_lock_pixels()
{
 if ( SDL_LockSurface( surface ) < 0 )
  fatal_error( "Couldn't lock surface" );
 sdl_pitch = surface->pitch;
 sdl_pixels = (unsigned char*) surface->pixels;
}
