
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_y_texture; int redraw; int gl_init; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
typedef TYPE_2__ RASPITEX_STATE ;


 int VCOS_FUNCTION ;
 int raspitexutil_update_y_texture ;
 int vcos_log_trace (char*,int ) ;
 int vcsm_square_init ;
 int vcsm_square_redraw ;
 int vcsm_square_redraw_readpixels ;

int vcsm_square_open(RASPITEX_STATE *raspitex_state)
{
    vcos_log_trace("%s", VCOS_FUNCTION);

    raspitex_state->ops.gl_init = vcsm_square_init;



    raspitex_state->ops.redraw = vcsm_square_redraw;

    raspitex_state->ops.update_y_texture = raspitexutil_update_y_texture;
    return 0;
}
