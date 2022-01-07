
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ window; scalar_t__ display; } ;
struct TYPE_6__ {TYPE_1__ x11; } ;
struct TYPE_7__ {TYPE_2__ info; scalar_t__ window; int version; } ;
typedef TYPE_3__ SDL_SysWMinfo ;


 int RARCH_DISPLAY_WIN32 ;
 int RARCH_DISPLAY_X11 ;
 int SDL_GetWMInfo (TYPE_3__*) ;
 int SDL_VERSION (int *) ;
 int video_driver_display_set (uintptr_t) ;
 int video_driver_display_type_set (int ) ;
 int video_driver_window_set (uintptr_t) ;

__attribute__((used)) static void sdl_gfx_set_handles(void)
{
}
