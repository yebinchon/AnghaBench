
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_v_texture; int update_u_texture; int update_y_texture; int update_texture; int redraw; int gl_init; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
typedef TYPE_2__ RASPITEX_STATE ;


 int raspitexutil_update_texture ;
 int raspitexutil_update_u_texture ;
 int raspitexutil_update_v_texture ;
 int raspitexutil_update_y_texture ;
 int yuv_init ;
 int yuv_redraw ;

int yuv_open(RASPITEX_STATE *state)
{
   state->ops.gl_init = yuv_init;
   state->ops.redraw = yuv_redraw;
   state->ops.update_texture = raspitexutil_update_texture;
   state->ops.update_y_texture = raspitexutil_update_y_texture;
   state->ops.update_u_texture = raspitexutil_update_u_texture;
   state->ops.update_v_texture = raspitexutil_update_v_texture;
   return 0;
}
