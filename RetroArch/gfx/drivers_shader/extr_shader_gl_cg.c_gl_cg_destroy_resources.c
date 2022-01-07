
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* shader; int lut_textures; } ;
typedef TYPE_1__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ luts; } ;


 int free (TYPE_2__*) ;
 int glDeleteTextures (scalar_t__,int ) ;
 int gl_cg_deinit_progs (void*) ;
 int gl_cg_reset_attrib (void*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void gl_cg_destroy_resources(void *data)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;
   if (!cg)
      return;

   gl_cg_reset_attrib(data);

   gl_cg_deinit_progs(data);

   if (cg->shader && cg->shader->luts)
   {
      glDeleteTextures(cg->shader->luts, cg->lut_textures);
      memset(cg->lut_textures, 0, sizeof(cg->lut_textures));
   }

   free(cg->shader);
   cg->shader = ((void*)0);
}
