
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int active_idx; TYPE_1__* prg; } ;
typedef TYPE_2__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ vprg; scalar_t__ fprg; } ;


 int gl_cg_reset_attrib (TYPE_2__*) ;
 int gl_cg_set_shaders (scalar_t__,scalar_t__) ;

__attribute__((used)) static void gl_cg_use(void *data, void *shader_data, unsigned idx, bool set_active)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)shader_data;
   if (cg && cg->prg[idx].vprg && cg->prg[idx].fprg)
   {
      if (set_active)
      {
         gl_cg_reset_attrib(cg);
         cg->active_idx = idx;
      }

      gl_cg_set_shaders(cg->prg[idx].fprg, cg->prg[idx].vprg);
   }
}
