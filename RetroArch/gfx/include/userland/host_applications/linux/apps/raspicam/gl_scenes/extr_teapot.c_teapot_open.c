
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_texture; int gl_term; int redraw; int update_model; int gl_init; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
typedef TYPE_2__ RASPITEX_STATE ;


 int raspitexutil_update_texture ;
 int teapot_gl_init ;
 int teapot_gl_term ;
 int teapot_redraw ;
 int teapot_update_model ;

int teapot_open(RASPITEX_STATE *raspitex_state)
{
   raspitex_state->ops.gl_init = teapot_gl_init;
   raspitex_state->ops.update_model = teapot_update_model;
   raspitex_state->ops.redraw = teapot_redraw;
   raspitex_state->ops.gl_term = teapot_gl_term;
   raspitex_state->ops.update_texture = raspitexutil_update_texture;
   return 0;
}
