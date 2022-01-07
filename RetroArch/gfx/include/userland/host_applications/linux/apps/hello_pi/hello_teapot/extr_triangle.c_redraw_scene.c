
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int surface; int display; int tex; int model; } ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int draw_wavefront (int ,int ) ;
 int eglSwapBuffers (int ,int ) ;
 int glClear (int) ;

__attribute__((used)) static void redraw_scene(CUBE_STATE_T *state)
{

   glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

   draw_wavefront(state->model, state->tex);

   eglSwapBuffers(state->display, state->surface);
}
