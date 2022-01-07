
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int texture; scalar_t__ scene_state; } ;
struct TYPE_4__ {int model; } ;
typedef TYPE_1__ TEAPOT_STATE_T ;
typedef TYPE_2__ RASPITEX_STATE ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int draw_wavefront (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glClear (int) ;

__attribute__((used)) static int teapot_redraw(RASPITEX_STATE *raspitex_state)
{
   TEAPOT_STATE_T *state = (TEAPOT_STATE_T *) raspitex_state->scene_state;


   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


   glBindTexture(GL_TEXTURE_EXTERNAL_OES, raspitex_state->texture);
   draw_wavefront(state->model, raspitex_state->texture);
   return 0;
}
