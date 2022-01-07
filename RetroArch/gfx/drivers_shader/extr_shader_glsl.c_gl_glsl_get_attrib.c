
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* shader; } ;
typedef TYPE_2__ glsl_shader_data_t ;
typedef int buf ;
struct TYPE_4__ {int prefix; } ;
typedef int GLuint ;
typedef scalar_t__ GLint ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ glGetAttribLocation (int ,char*) ;
 scalar_t__ glGetUniformLocation (int ,char*) ;
 int * glsl_prefixes ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static GLint gl_glsl_get_attrib(glsl_shader_data_t *glsl,
      GLuint prog, const char *base)
{
   unsigned i;
   GLint loc;
   char buf[80];

   buf[0] = '\0';

   strlcpy(buf, glsl->shader->prefix, sizeof(buf));
   strlcat(buf, base, sizeof(buf));
   loc = glGetUniformLocation(prog, buf);
   if (loc >= 0)
      return loc;

   for (i = 0; i < ARRAY_SIZE(glsl_prefixes); i++)
   {
      strlcpy(buf, glsl_prefixes[i], sizeof(buf));
      strlcat(buf, base, sizeof(buf));
      loc = glGetAttribLocation(prog, buf);
      if (loc >= 0)
         return loc;
   }

   return -1;
}
