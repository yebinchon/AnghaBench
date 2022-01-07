
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int attribs_index; int * attribs_elems; } ;
typedef TYPE_1__ glsl_shader_data_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int glDisableVertexAttribArray (int ) ;
 int retro_assert (int) ;

__attribute__((used)) static void gl_glsl_reset_attrib(glsl_shader_data_t *glsl)
{
   unsigned i;


   retro_assert(glsl->attribs_index <= ARRAY_SIZE(glsl->attribs_elems));

   for (i = 0; i < glsl->attribs_index; i++)
      glDisableVertexAttribArray(glsl->attribs_elems[i]);
   glsl->attribs_index = 0;
}
