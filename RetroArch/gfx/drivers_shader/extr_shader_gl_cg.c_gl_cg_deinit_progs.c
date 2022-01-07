
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* prg; int cgVProf; int cgFProf; } ;
typedef TYPE_1__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ fprg; scalar_t__ vprg; } ;


 unsigned int GFX_MAX_SHADERS ;
 int RARCH_LOG (char*) ;
 int cgDestroyProgram (scalar_t__) ;
 int cgGLUnbindProgram (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void gl_cg_deinit_progs(void *data)
{
   unsigned i;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!cg)
      return;

   RARCH_LOG("[CG]: Destroying programs.\n");
   cgGLUnbindProgram(cg->cgFProf);
   cgGLUnbindProgram(cg->cgVProf);


   for (i = 1; i < GFX_MAX_SHADERS; i++)
   {
      if (cg->prg[i].fprg && cg->prg[i].fprg != cg->prg[0].fprg)
         cgDestroyProgram(cg->prg[i].fprg);
      if (cg->prg[i].vprg && cg->prg[i].vprg != cg->prg[0].vprg)
         cgDestroyProgram(cg->prg[i].vprg);
   }

   if (cg->prg[0].fprg)
      cgDestroyProgram(cg->prg[0].fprg);
   if (cg->prg[0].vprg)
      cgDestroyProgram(cg->prg[0].vprg);

   memset(cg->prg, 0, sizeof(cg->prg));
}
