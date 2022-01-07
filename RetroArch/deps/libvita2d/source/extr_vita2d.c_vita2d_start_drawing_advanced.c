
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gxm_sfd; int gxm_sfc; int gxm_rtgt; } ;
typedef TYPE_1__ vita2d_texture ;


 int _vita2d_context ;
 size_t backBufferIndex ;
 int clip_rect_x_max ;
 int clip_rect_x_min ;
 int clip_rect_y_max ;
 int clip_rect_y_min ;
 scalar_t__ clipping_enabled ;
 int depthSurface ;
 int ** displayBufferSync ;
 int * displaySurface ;
 int drawing ;
 int renderTarget ;
 int sceGxmBeginScene (int ,unsigned int,int ,int *,int *,int *,int *,int *) ;
 int vita2d_set_clip_rectangle (int ,int ,int ,int ) ;

void vita2d_start_drawing_advanced(vita2d_texture *target, unsigned int flags)
{

 if (target == ((void*)0)) {
  sceGxmBeginScene(
  _vita2d_context,
  flags,
  renderTarget,
  ((void*)0),
  ((void*)0),
  displayBufferSync[backBufferIndex],
  &displaySurface[backBufferIndex],
  &depthSurface);
 } else {
  sceGxmBeginScene(
  _vita2d_context,
  flags,
  target->gxm_rtgt,
  ((void*)0),
  ((void*)0),
  ((void*)0),
  &target->gxm_sfc,
  &target->gxm_sfd);
 }

 drawing = 1;

 if (clipping_enabled) {
  vita2d_set_clip_rectangle(clip_rect_x_min, clip_rect_y_min, clip_rect_x_max, clip_rect_y_max);
 }
}
