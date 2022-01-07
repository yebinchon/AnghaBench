
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ height; scalar_t__ width; int y; int x; } ;
struct TYPE_7__ {TYPE_1__ vp; int renderer; } ;
typedef TYPE_2__ sdl2_video_t ;
struct TYPE_8__ {int w; int h; int y; int x; } ;
typedef TYPE_3__ SDL_Rect ;


 int SDL_RenderClear (int ) ;
 int SDL_RenderSetLogicalSize (int ,scalar_t__,scalar_t__) ;
 int SDL_RenderSetViewport (int ,TYPE_3__*) ;

__attribute__((used)) static void sdl_refresh_renderer(sdl2_video_t *vid)
{
   SDL_Rect r;

   SDL_RenderClear(vid->renderer);

   r.x = vid->vp.x;
   r.y = vid->vp.y;
   r.w = (int)vid->vp.width;
   r.h = (int)vid->vp.height;

   SDL_RenderSetViewport(vid->renderer, &r);





}
