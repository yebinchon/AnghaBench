
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int v3; int v2; int v1; int v0; } ;
struct TYPE_9__ {int floatv; TYPE_3__ f; } ;
struct TYPE_7__ {int type; size_t idx; char* ident; scalar_t__ add_prefix; scalar_t__ enable; } ;
struct uniform_info {int type; TYPE_4__ result; TYPE_2__ lookup; int enabled; } ;
struct uniform_cg {int loc; } ;
typedef int ident ;
struct TYPE_10__ {TYPE_1__* prg; } ;
typedef TYPE_5__ cg_shader_data_t ;
struct TYPE_6__ {int fprg; int vprg; } ;
typedef int CGprogram ;
typedef int CGparameter ;
 int cgGLSetParameter1f (int ,int ) ;
 int cgGLSetParameter1fv (int ,int ) ;
 int cgGLSetParameter2f (int ,int ,int ) ;
 int cgGLSetParameter2fv (int ,int ) ;
 int cgGLSetParameter3f (int ,int ,int ,int ) ;
 int cgGLSetParameter3fv (int ,int ) ;
 int cgGLSetParameter4f (int ,int ,int ,int ,int ) ;
 int cgGetNamedParameter (int ,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void gl_cg_set_uniform_parameter(
      void *data,
      struct uniform_info *param,
      void *uniform_data)
{
   CGparameter location;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!param || !param->enabled)
      return;

   if (param->lookup.enable)
   {
      char ident[64];
      CGprogram prog = 0;

      ident[0] = '\0';

      switch (param->lookup.type)
      {
         case 137:
            prog = cg->prg[param->lookup.idx].vprg;
            break;
         case 138:
         default:
            prog = cg->prg[param->lookup.idx].fprg;
            break;
      }

      if (param->lookup.add_prefix)
         snprintf(ident, sizeof(ident), "IN.%s", param->lookup.ident);
      location = cgGetNamedParameter(prog, param->lookup.add_prefix ? ident : param->lookup.ident);
   }
   else
   {
      struct uniform_cg *cg_param = (struct uniform_cg*)uniform_data;
      location = cg_param->loc;
   }

   switch (param->type)
   {
      case 136:
         cgGLSetParameter1f(location, param->result.f.v0);
         break;
      case 133:
         cgGLSetParameter2f(location, param->result.f.v0, param->result.f.v1);
         break;
      case 131:
         cgGLSetParameter3f(location, param->result.f.v0, param->result.f.v1,
               param->result.f.v2);
         break;
      case 129:
         cgGLSetParameter4f(location, param->result.f.v0, param->result.f.v1,
               param->result.f.v2, param->result.f.v3);
         break;
      case 135:
         cgGLSetParameter1fv(location, param->result.floatv);
         break;
      case 132:
         cgGLSetParameter2fv(location, param->result.floatv);
         break;
      case 130:
         cgGLSetParameter3fv(location, param->result.floatv);
         break;
      case 128:
         cgGLSetParameter3fv(location, param->result.floatv);
         break;
      case 134:

         break;
   }
}
