
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shader_program_info {int is_file; int combined; } ;
struct TYPE_2__ {int * prg; } ;
typedef TYPE_1__ cg_shader_data_t ;


 int RARCH_ERR (char*) ;
 int gl_cg_compile_program (void*,int ,int *,struct shader_program_info*) ;
 int gl_cg_set_program_base_attrib (void*,int ) ;
 int stock_cg_gl_program ;

__attribute__((used)) static bool gl_cg_load_stock(void *data)
{
   struct shader_program_info program_info;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   program_info.combined = stock_cg_gl_program;
   program_info.is_file = 0;

   if (!gl_cg_compile_program(data, 0, &cg->prg[0], &program_info))
      goto error;

   gl_cg_set_program_base_attrib(data, 0);

   return 1;

error:
   RARCH_ERR("Failed to compile passthrough shader, is something wrong with your environment?\n");
   return 0;
}
