
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rotation; scalar_t__ hw_render_bottom_left; } ;
typedef TYPE_1__ gl_core_t ;


 int gl_core_default_ortho ;
 int gl_core_set_projection (TYPE_1__*,int *,int) ;
 scalar_t__ video_driver_is_hw_context () ;

__attribute__((used)) static void gl_core_set_rotation(void *data, unsigned rotation)
{
   gl_core_t *gl = (gl_core_t*)data;

   if (!gl)
      return;

   gl->rotation = video_driver_is_hw_context() && gl->hw_render_bottom_left ? 90 * rotation : 270 * rotation;
   gl_core_set_projection(gl, &gl_core_default_ortho, 1);
}
