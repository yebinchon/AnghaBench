
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cg_shader_data_t ;


 int free (int *) ;
 int gl_cg_deinit_context_state (int *) ;
 int gl_cg_destroy_resources (int *) ;

__attribute__((used)) static void gl_cg_deinit(void *data)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (!cg)
      return;

   gl_cg_destroy_resources(cg);
   gl_cg_deinit_context_state(cg);

   free(cg);
}
