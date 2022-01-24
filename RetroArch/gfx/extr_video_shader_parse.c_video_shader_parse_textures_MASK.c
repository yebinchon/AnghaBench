#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wrap_mode ;
struct video_shader {size_t luts; TYPE_1__* lut; } ;
typedef  int /*<<< orphan*/  id_wrap ;
typedef  int /*<<< orphan*/  id_mipmap ;
typedef  int /*<<< orphan*/  id_filter ;
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ config_file_t ;
struct TYPE_6__ {char* id; int mipmap; int /*<<< orphan*/  wrap; int /*<<< orphan*/  filter; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 size_t GFX_MAX_TEXTURES ; 
 size_t PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  RARCH_FILTER_LINEAR ; 
 int /*<<< orphan*/  RARCH_FILTER_NEAREST ; 
 int /*<<< orphan*/  RARCH_FILTER_UNSPEC ; 
 scalar_t__ FUNC1 (TYPE_2__*,char const*,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 char* FUNC8 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static bool FUNC10(config_file_t *conf,
      struct video_shader *shader)
{
   size_t path_size     = PATH_MAX_LENGTH;
   const char *id       = NULL;
   char *save           = NULL;
   char *textures       = (char*)FUNC5(1024 + path_size);
   char *tmp_path       = textures + 1024;

   if (!textures)
      return false;

   textures[0] = '\0';

   if (!FUNC1(conf, "textures", textures, 1024))
   {
      FUNC4(textures);
      return true;
   }

   for (id = FUNC8(textures, ";", &save);
         id && shader->luts < GFX_MAX_TEXTURES;
         shader->luts++, id = FUNC8(NULL, ";", &save))
   {
      char id_filter[64];
      char id_wrap[64];
      char wrap_mode[64];
      char id_mipmap[64];
      bool mipmap         = false;
      bool smooth         = false;

      id_filter[0] = id_wrap[0] = wrap_mode[0] = id_mipmap[0] = '\0';

      if (!FUNC1(conf, id, tmp_path, path_size))
      {
         FUNC0("Cannot find path to texture \"%s\" ...\n", id);
         FUNC4(textures);
         return false;
      }

      FUNC3(shader->lut[shader->luts].path,
            conf->path, tmp_path, sizeof(shader->lut[shader->luts].path));

      FUNC7(shader->lut[shader->luts].id, id,
            sizeof(shader->lut[shader->luts].id));

      FUNC7(id_filter, id, sizeof(id_filter));
      FUNC6(id_filter, "_linear", sizeof(id_filter));
      if (FUNC2(conf, id_filter, &smooth))
         shader->lut[shader->luts].filter = smooth ?
            RARCH_FILTER_LINEAR : RARCH_FILTER_NEAREST;
      else
         shader->lut[shader->luts].filter = RARCH_FILTER_UNSPEC;

      FUNC7(id_wrap, id, sizeof(id_wrap));
      FUNC6(id_wrap, "_wrap_mode", sizeof(id_wrap));
      if (FUNC1(conf, id_wrap, wrap_mode, sizeof(wrap_mode)))
         shader->lut[shader->luts].wrap = FUNC9(wrap_mode);

      FUNC7(id_mipmap, id, sizeof(id_mipmap));
      FUNC6(id_mipmap, "_mipmap", sizeof(id_mipmap));
      if (FUNC2(conf, id_mipmap, &mipmap))
         shader->lut[shader->luts].mipmap = mipmap;
      else
         shader->lut[shader->luts].mipmap = false;
   }

   FUNC4(textures);
   return true;
}