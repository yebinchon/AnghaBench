
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_texture; int redraw; int gl_init; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
typedef TYPE_2__ RASPITEX_STATE ;


 int mirror_init ;
 int mirror_redraw ;
 int raspitexutil_update_texture ;

int mirror_open(RASPITEX_STATE *state)
{
   state->ops.gl_init = mirror_init;
   state->ops.redraw = mirror_redraw;
   state->ops.update_texture = raspitexutil_update_texture;
   return 0;
}
