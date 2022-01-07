
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_shader {int passes; TYPE_1__* pass; } ;
typedef int config_file_t ;
struct TYPE_6__ {int lut_textures; struct video_shader* shader; int * alias_define; } ;
typedef TYPE_2__ cg_shader_data_t ;
struct TYPE_5__ {char* alias; } ;


 int GFX_MAX_SHADERS ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,char const*) ;
 int RARCH_WARN (char*,int) ;
 scalar_t__ calloc (int,int) ;
 int config_file_free (int *) ;
 int gl_cg_load_shader (TYPE_2__*,unsigned int) ;
 int gl_cg_load_stock (TYPE_2__*) ;
 int gl_load_luts (struct video_shader*,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int video_shader_read_conf_preset (int *,struct video_shader*) ;
 int * video_shader_read_preset (char const*) ;
 int video_shader_resolve_parameters (int *,struct video_shader*) ;

__attribute__((used)) static bool gl_cg_load_preset(void *data, const char *path)
{
   unsigned i;
   config_file_t *conf = ((void*)0);
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!gl_cg_load_stock(cg))
      return 0;

   RARCH_LOG("[CG]: Loading Cg meta-shader: %s\n", path);
   conf = video_shader_read_preset(path);
   if (!conf)
   {
      RARCH_ERR("Failed to load preset.\n");
      return 0;
   }

   cg->shader = (struct video_shader*)calloc(1, sizeof(*cg->shader));
   if (!cg->shader)
   {
      config_file_free(conf);
      return 0;
   }

   if (!video_shader_read_conf_preset(conf, cg->shader))
   {
      RARCH_ERR("Failed to parse CGP file.\n");
      config_file_free(conf);
      return 0;
   }

   video_shader_resolve_parameters(conf, cg->shader);
   config_file_free(conf);

   if (cg->shader->passes > GFX_MAX_SHADERS - 3)
   {
      RARCH_WARN("Too many shaders ... Capping shader amount to %d.\n",
            GFX_MAX_SHADERS - 3);
      cg->shader->passes = GFX_MAX_SHADERS - 3;
   }

   for (i = 0; i < cg->shader->passes; i++)
   {
      if (*cg->shader->pass[i].alias)
         snprintf(cg->alias_define[i],
               sizeof(cg->alias_define[i]),
               "-D%s_ALIAS",
               cg->shader->pass[i].alias);
   }

   for (i = 0; i < cg->shader->passes; i++)
   {
      if (!gl_cg_load_shader(cg, i))
      {
         RARCH_ERR("Failed to load shaders ...\n");
         return 0;
      }
   }

   if (!gl_load_luts(cg->shader, cg->lut_textures))
   {
      RARCH_ERR("Failed to load lookup textures ...\n");
      return 0;
   }

   return 1;
}
