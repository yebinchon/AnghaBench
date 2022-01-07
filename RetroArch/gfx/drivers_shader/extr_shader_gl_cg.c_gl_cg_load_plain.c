
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_shader {int passes; TYPE_2__* pass; } ;
struct shader_program_info {char const* combined; int is_file; } ;
struct TYPE_7__ {struct video_shader* shader; int * prg; } ;
typedef TYPE_3__ cg_shader_data_t ;
struct TYPE_5__ {int path; } ;
struct TYPE_6__ {TYPE_1__ source; } ;


 int RARCH_LOG (char*,...) ;
 scalar_t__ calloc (int,int) ;
 int gl_cg_compile_program (void*,int,int *,struct shader_program_info*) ;
 int gl_cg_load_stock (TYPE_3__*) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (int ,char const*,int) ;
 int video_shader_resolve_parameters (int *,struct video_shader*) ;

__attribute__((used)) static bool gl_cg_load_plain(void *data, const char *path)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!gl_cg_load_stock(cg))
      return 0;

   cg->shader = (struct video_shader*)
      calloc(1, sizeof(*cg->shader));
   if (!cg->shader)
      return 0;

   cg->shader->passes = 1;

   if (string_is_empty(path))
   {
      RARCH_LOG("[CG]: Loading stock Cg file.\n");
      cg->prg[1] = cg->prg[0];
   }
   else
   {
      struct shader_program_info program_info;

      program_info.combined = path;
      program_info.is_file = 1;

      RARCH_LOG("[CG]: Loading Cg file: %s\n", path);
      strlcpy(cg->shader->pass[0].source.path, path,
            sizeof(cg->shader->pass[0].source.path));
      if (!gl_cg_compile_program(data, 1, &cg->prg[1], &program_info))
         return 0;
   }

   video_shader_resolve_parameters(((void*)0), cg->shader);
   return 1;
}
