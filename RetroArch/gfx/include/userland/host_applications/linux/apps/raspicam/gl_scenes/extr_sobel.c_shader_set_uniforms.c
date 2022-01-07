
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * attribute_locations; int * uniform_locations; int program; } ;
typedef TYPE_1__ RASPITEXUTIL_SHADER_PROGRAM_T ;


 int GLCHK (int ) ;
 int glEnableVertexAttribArray (int ) ;
 int glUniform1i (int ,int ) ;
 int glUniform2f (int ,double,double) ;
 int glUseProgram (int ) ;

__attribute__((used)) static int shader_set_uniforms(RASPITEXUTIL_SHADER_PROGRAM_T *shader,
      int width, int height)
{
   GLCHK(glUseProgram(shader->program));
   GLCHK(glUniform1i(shader->uniform_locations[0], 0));


   GLCHK(glUniform2f(shader->uniform_locations[1],
            1.0 / (float) width, 1.0 / (float) height));


   GLCHK(glEnableVertexAttribArray(shader->attribute_locations[0]));
   return 0;
}
