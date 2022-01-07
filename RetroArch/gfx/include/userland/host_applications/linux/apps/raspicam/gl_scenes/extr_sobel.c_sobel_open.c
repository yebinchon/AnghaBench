
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_y_texture; int redraw; int gl_init; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
typedef TYPE_2__ RASPITEX_STATE ;


 int raspitexutil_update_y_texture ;
 int sobel_init ;
 int sobel_redraw ;

int sobel_open(RASPITEX_STATE *state)
{
   state->ops.gl_init = sobel_init;
   state->ops.redraw = sobel_redraw;
   state->ops.update_y_texture = raspitexutil_update_y_texture;
   return 0;
}
