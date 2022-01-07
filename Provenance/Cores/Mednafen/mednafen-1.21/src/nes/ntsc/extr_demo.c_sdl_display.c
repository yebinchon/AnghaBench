
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SDL_BlitSurface (int ,int *,int ,int *) ;
 scalar_t__ SDL_Flip (int ) ;
 int SDL_UnlockSurface (int ) ;
 int fatal_error (char*) ;
 int rect ;
 int screen ;
 int surface ;

void sdl_display()
{
 SDL_UnlockSurface( surface );
 if ( SDL_BlitSurface( surface, &rect, screen, &rect ) < 0 || SDL_Flip( screen ) < 0 )
  fatal_error( "SDL blit failed" );
}
