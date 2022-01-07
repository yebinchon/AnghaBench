
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cgCtx; } ;
typedef TYPE_1__ cg_shader_data_t ;


 int RARCH_LOG (char*) ;
 int cgDestroyContext (int *) ;

__attribute__((used)) static void gl_cg_deinit_context_state(void *data)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (cg->cgCtx)
   {
      RARCH_LOG("[CG]: Destroying context.\n");
      cgDestroyContext(cg->cgCtx);
   }
   cg->cgCtx = ((void*)0);
}
