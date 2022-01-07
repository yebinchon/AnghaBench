
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef scalar_t__ GLint ;


 int GL_LINK_STATUS ;
 scalar_t__ GL_TRUE ;
 int glGetProgramiv (int ,int ,scalar_t__*) ;
 int glLinkProgram (int ) ;
 int glUseProgram (int ) ;
 int gl_glsl_print_linker_log (int ) ;

__attribute__((used)) static bool gl_glsl_link_program(GLuint prog)
{
   GLint status;

   glLinkProgram(prog);

   glGetProgramiv(prog, GL_LINK_STATUS, &status);
   gl_glsl_print_linker_log(prog);

   if (status != GL_TRUE)
      return 0;

   glUseProgram(prog);
   return 1;
}
