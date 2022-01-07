
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glsl_shader_data_t ;


 int free (int *) ;
 int gl_glsl_destroy_resources (int *) ;

__attribute__((used)) static void gl_glsl_deinit(void *data)
{
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;

   if (!glsl)
      return;

   gl_glsl_destroy_resources(glsl);

   free(glsl);
}
