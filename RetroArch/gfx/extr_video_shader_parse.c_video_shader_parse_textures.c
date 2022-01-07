
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wrap_mode ;
struct video_shader {size_t luts; TYPE_1__* lut; } ;
typedef int id_wrap ;
typedef int id_mipmap ;
typedef int id_filter ;
struct TYPE_7__ {int path; } ;
typedef TYPE_2__ config_file_t ;
struct TYPE_6__ {char* id; int mipmap; int wrap; int filter; int path; } ;


 size_t GFX_MAX_TEXTURES ;
 size_t PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,char const*) ;
 int RARCH_FILTER_LINEAR ;
 int RARCH_FILTER_NEAREST ;
 int RARCH_FILTER_UNSPEC ;
 scalar_t__ config_get_array (TYPE_2__*,char const*,char*,int) ;
 scalar_t__ config_get_bool (TYPE_2__*,char*,int*) ;
 int fill_pathname_resolve_relative (int ,int ,char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 char* strtok_r (char*,char*,char**) ;
 int wrap_str_to_mode (char*) ;

__attribute__((used)) static bool video_shader_parse_textures(config_file_t *conf,
      struct video_shader *shader)
{
   size_t path_size = PATH_MAX_LENGTH;
   const char *id = ((void*)0);
   char *save = ((void*)0);
   char *textures = (char*)malloc(1024 + path_size);
   char *tmp_path = textures + 1024;

   if (!textures)
      return 0;

   textures[0] = '\0';

   if (!config_get_array(conf, "textures", textures, 1024))
   {
      free(textures);
      return 1;
   }

   for (id = strtok_r(textures, ";", &save);
         id && shader->luts < GFX_MAX_TEXTURES;
         shader->luts++, id = strtok_r(((void*)0), ";", &save))
   {
      char id_filter[64];
      char id_wrap[64];
      char wrap_mode[64];
      char id_mipmap[64];
      bool mipmap = 0;
      bool smooth = 0;

      id_filter[0] = id_wrap[0] = wrap_mode[0] = id_mipmap[0] = '\0';

      if (!config_get_array(conf, id, tmp_path, path_size))
      {
         RARCH_ERR("Cannot find path to texture \"%s\" ...\n", id);
         free(textures);
         return 0;
      }

      fill_pathname_resolve_relative(shader->lut[shader->luts].path,
            conf->path, tmp_path, sizeof(shader->lut[shader->luts].path));

      strlcpy(shader->lut[shader->luts].id, id,
            sizeof(shader->lut[shader->luts].id));

      strlcpy(id_filter, id, sizeof(id_filter));
      strlcat(id_filter, "_linear", sizeof(id_filter));
      if (config_get_bool(conf, id_filter, &smooth))
         shader->lut[shader->luts].filter = smooth ?
            RARCH_FILTER_LINEAR : RARCH_FILTER_NEAREST;
      else
         shader->lut[shader->luts].filter = RARCH_FILTER_UNSPEC;

      strlcpy(id_wrap, id, sizeof(id_wrap));
      strlcat(id_wrap, "_wrap_mode", sizeof(id_wrap));
      if (config_get_array(conf, id_wrap, wrap_mode, sizeof(wrap_mode)))
         shader->lut[shader->luts].wrap = wrap_str_to_mode(wrap_mode);

      strlcpy(id_mipmap, id, sizeof(id_mipmap));
      strlcat(id_mipmap, "_mipmap", sizeof(id_mipmap));
      if (config_get_bool(conf, id_mipmap, &mipmap))
         shader->lut[shader->luts].mipmap = mipmap;
      else
         shader->lut[shader->luts].mipmap = 0;
   }

   free(textures);
   return 1;
}
