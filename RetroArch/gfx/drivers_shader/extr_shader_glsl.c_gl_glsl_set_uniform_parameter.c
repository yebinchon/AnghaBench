
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int v0; } ;
struct TYPE_9__ {int v3; int v2; int v1; int v0; } ;
struct TYPE_11__ {TYPE_4__ integer; int floatv; TYPE_3__ f; } ;
struct TYPE_8__ {size_t idx; int ident; scalar_t__ enable; } ;
struct uniform_info {int type; TYPE_5__ result; int location; TYPE_2__ lookup; } ;
struct TYPE_12__ {TYPE_1__* prg; } ;
typedef TYPE_6__ glsl_shader_data_t ;
struct TYPE_7__ {int id; } ;
typedef int GLint ;
 int glGetUniformLocation (int ,int ) ;
 int glUniform1f (int ,int ) ;
 int glUniform1fv (int ,int,int ) ;
 int glUniform1i (int ,int ) ;
 int glUniform2f (int ,int ,int ) ;
 int glUniform2fv (int ,int,int ) ;
 int glUniform3f (int ,int ,int ,int ) ;
 int glUniform3fv (int ,int,int ) ;
 int glUniform4f (int ,int ,int ,int ,int ) ;
 int glUniform4fv (int ,int,int ) ;

__attribute__((used)) static void gl_glsl_set_uniform_parameter(
      void *data,
      struct uniform_info *param,
      void *uniform_data)
{
   GLint location = 0;
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;

   if (!glsl || !param)
      return;

   if (param->lookup.enable)
      location = glGetUniformLocation(glsl->prg[param->lookup.idx].id, param->lookup.ident);
   else
      location = param->location;

   switch (param->type)
   {
      case 136:
         glUniform1f(location, param->result.f.v0);
         break;
      case 133:
         glUniform2f(location, param->result.f.v0,
               param->result.f.v1);
         break;
      case 131:
         glUniform3f(location, param->result.f.v0,
               param->result.f.v1, param->result.f.v2);
         break;
      case 129:
         glUniform4f(location, param->result.f.v0,
               param->result.f.v1, param->result.f.v2,
               param->result.f.v3);
         break;
      case 135:
         glUniform1fv(location, 1, param->result.floatv);
         break;
      case 132:
         glUniform2fv(location, 1, param->result.floatv);
         break;
      case 130:
         glUniform3fv(location, 1, param->result.floatv);
         break;
      case 128:
         glUniform4fv(location, 1, param->result.floatv);
         break;
      case 134:
         glUniform1i(location, (GLint)param->result.integer.v0);
         break;
   }
}
