
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int h; } ;


 int SDL_CreateRGBSurface (int ,int,int,int,int ,int ,int ,int ) ;
 int SDL_INIT_VIDEO ;
 scalar_t__ SDL_Init (int ) ;
 int SDL_Quit ;
 int SDL_SWSURFACE ;
 int SDL_SetVideoMode (int,int,int ,int ) ;
 int atexit (int ) ;
 int fatal_error (char*) ;
 TYPE_1__ rect ;
 int screen ;
 int surface ;

void sdl_init( int width, int height, int depth )
{
 rect.w = width;
 rect.h = height;

 if ( SDL_Init( SDL_INIT_VIDEO ) < 0 )
  fatal_error( "SDL initialization failed" );
 atexit( SDL_Quit );

 screen = SDL_SetVideoMode( width, height, 0, 0 );
 surface = SDL_CreateRGBSurface( SDL_SWSURFACE, width, height, depth, 0, 0, 0, 0 );
 if ( !screen || !surface )
  fatal_error( "SDL initialization failed" );
}
