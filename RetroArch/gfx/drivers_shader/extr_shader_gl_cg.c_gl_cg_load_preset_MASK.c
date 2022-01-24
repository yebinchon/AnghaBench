#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_shader {int passes; TYPE_1__* pass; } ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_6__ {int /*<<< orphan*/  lut_textures; struct video_shader* shader; int /*<<< orphan*/ * alias_define; } ;
typedef  TYPE_2__ cg_shader_data_t ;
struct TYPE_5__ {char* alias; } ;

/* Variables and functions */
 int GFX_MAX_SHADERS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct video_shader*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct video_shader*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct video_shader*) ; 

__attribute__((used)) static bool FUNC12(void *data, const char *path)
{
   unsigned i;
   config_file_t  *conf = NULL;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!FUNC6(cg))
      return false;

   FUNC1("[CG]: Loading Cg meta-shader: %s\n", path);
   conf = FUNC10(path);
   if (!conf)
   {
      FUNC0("Failed to load preset.\n");
      return false;
   }

   cg->shader = (struct video_shader*)FUNC3(1, sizeof(*cg->shader));
   if (!cg->shader)
   {
      FUNC4(conf);
      return false;
   }

   if (!FUNC9(conf, cg->shader))
   {
      FUNC0("Failed to parse CGP file.\n");
      FUNC4(conf);
      return false;
   }

   FUNC11(conf, cg->shader);
   FUNC4(conf);

   if (cg->shader->passes > GFX_MAX_SHADERS - 3)
   {
      FUNC2("Too many shaders ... Capping shader amount to %d.\n",
            GFX_MAX_SHADERS - 3);
      cg->shader->passes = GFX_MAX_SHADERS - 3;
   }

   for (i = 0; i < cg->shader->passes; i++)
   {
      if (*cg->shader->pass[i].alias)
         FUNC8(cg->alias_define[i],
               sizeof(cg->alias_define[i]),
               "-D%s_ALIAS",
               cg->shader->pass[i].alias);
   }

   for (i = 0; i < cg->shader->passes; i++)
   {
      if (!FUNC5(cg, i))
      {
         FUNC0("Failed to load shaders ...\n");
         return false;
      }
   }

   if (!FUNC7(cg->shader, cg->lut_textures))
   {
      FUNC0("Failed to load lookup textures ...\n");
      return false;
   }

   return true;
}