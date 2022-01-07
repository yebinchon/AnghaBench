
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct shader_program_info {int is_file; int combined; } ;
struct TYPE_8__ {int * prg; TYPE_3__* shader; } ;
typedef TYPE_4__ cg_shader_data_t ;
struct TYPE_7__ {TYPE_2__* pass; } ;
struct TYPE_5__ {int path; } ;
struct TYPE_6__ {TYPE_1__ source; } ;


 int RARCH_LOG (char*,int ) ;
 int gl_cg_compile_program (void*,unsigned int,int *,struct shader_program_info*) ;

__attribute__((used)) static bool gl_cg_load_shader(void *data, unsigned i)
{
   struct shader_program_info program_info;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   program_info.combined = cg->shader->pass[i].source.path;
   program_info.is_file = 1;

   RARCH_LOG("[CG]: Loading Cg shader: \"%s\".\n",
         cg->shader->pass[i].source.path);

   if (!gl_cg_compile_program(data, i + 1, &cg->prg[i + 1],&program_info))
      return 0;

   return 1;
}
