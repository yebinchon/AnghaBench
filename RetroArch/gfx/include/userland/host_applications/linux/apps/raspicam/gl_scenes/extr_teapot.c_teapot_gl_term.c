
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* scene_state; } ;
struct TYPE_6__ {scalar_t__ model; } ;
typedef TYPE_1__ TEAPOT_STATE_T ;
typedef TYPE_2__ RASPITEX_STATE ;


 int VCOS_FUNCTION ;
 int free (TYPE_1__*) ;
 int raspitexutil_gl_term (TYPE_2__*) ;
 int unload_wavefront (scalar_t__) ;
 int vcos_log_trace (char*,int ) ;

__attribute__((used)) static void teapot_gl_term(RASPITEX_STATE *raspitex_state)
{
   vcos_log_trace("%s:", VCOS_FUNCTION);

   TEAPOT_STATE_T *state = raspitex_state->scene_state;
   if (state)
   {
      if (state->model)
         unload_wavefront(state->model);
      raspitexutil_gl_term(raspitex_state);
      free(raspitex_state->scene_state);
      raspitex_state->scene_state = ((void*)0);
   }
}
