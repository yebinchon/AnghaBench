#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* path; } ;
struct video_shader_pass {scalar_t__ filter; scalar_t__ frame_count_mod; int mipmap; char* alias; int /*<<< orphan*/  fbo; int /*<<< orphan*/  wrap; TYPE_1__ source; } ;
struct video_shader {scalar_t__ passes; scalar_t__ feedback_pass; int num_parameters; int luts; TYPE_3__* lut; TYPE_2__* parameters; struct video_shader_pass* pass; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_6__ {char const* id; char const* path; scalar_t__ filter; int mipmap; int /*<<< orphan*/  wrap; } ;
struct TYPE_5__ {char const* id; int /*<<< orphan*/  current; } ;

/* Variables and functions */
 size_t PATH_MAX_LENGTH ; 
 scalar_t__ RARCH_FILTER_LINEAR ; 
 scalar_t__ RARCH_FILTER_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(config_file_t *conf,
      const struct video_shader *shader, const char *preset_path)
{
   unsigned i;
   char key[64];
   size_t tmp_size = PATH_MAX_LENGTH;
   char *tmp       = (char*)FUNC7(3*tmp_size);
   char *tmp_rel   = tmp +   tmp_size;
   char *tmp_base  = tmp + 2*tmp_size;

   if (!tmp)
      return;

   FUNC2(conf, "shaders", shader->passes);
   if (shader->feedback_pass >= 0)
      FUNC2(conf, "feedback_pass", shader->feedback_pass);

   if (preset_path)
   {
      FUNC14(tmp_base, preset_path, tmp_size);

      /* ensure we use a clean base like the shader passes and texture paths do */
      FUNC10(tmp_base, tmp_size, false);
      FUNC8(tmp_base);
   }

   for (i = 0; i < shader->passes; i++)
   {
      const struct video_shader_pass *pass = &shader->pass[i];

      FUNC12(key, sizeof(key), "shader%u", i);

      if (preset_path)
      {
         FUNC14(tmp, pass->source.path, tmp_size);
         FUNC9(tmp_rel, tmp, tmp_base, tmp_size);
         FUNC6(tmp_rel);

         FUNC3(conf, key, tmp_rel);
      }
      else
         FUNC3(conf, key, pass->source.path);


      if (pass->filter != RARCH_FILTER_UNSPEC)
      {
         FUNC12(key, sizeof(key), "filter_linear%u", i);
         FUNC0(conf, key, pass->filter == RARCH_FILTER_LINEAR);
      }

      FUNC12(key, sizeof(key), "wrap_mode%u", i);
      FUNC4(conf, key, FUNC15(pass->wrap));

      if (pass->frame_count_mod)
      {
         FUNC12(key, sizeof(key), "frame_count_mod%u", i);
         FUNC2(conf, key, pass->frame_count_mod);
      }

      FUNC12(key, sizeof(key), "mipmap_input%u", i);
      FUNC0(conf, key, pass->mipmap);

      FUNC12(key, sizeof(key), "alias%u", i);
      FUNC4(conf, key, pass->alias);

      FUNC11(conf, &pass->fbo, i);
   }


   if (shader->num_parameters)
   {
      size_t param_size = 4096 * sizeof(char);
      char *parameters  = (char*)FUNC7(param_size);

      if (parameters)
      {
         parameters[0] = '\0';

         FUNC14(parameters, shader->parameters[0].id, param_size);

         for (i = 1; i < shader->num_parameters; i++)
         {
            /* O(n^2), but number of parameters is very limited. */
            FUNC13(parameters, ";", param_size);
            FUNC13(parameters, shader->parameters[i].id, param_size);
         }

         FUNC4(conf, "parameters", parameters);

         for (i = 0; i < shader->num_parameters; i++)
            FUNC1(conf, shader->parameters[i].id,
                  shader->parameters[i].current);
         FUNC5(parameters);
      }
   }

   if (shader->luts)
   {
      size_t tex_size = 4096 * sizeof(char);
      char *textures  = (char*)FUNC7(tex_size);

      if (textures)
      {
         textures[0] = '\0';

         FUNC14(textures, shader->lut[0].id, tex_size);

         for (i = 1; i < shader->luts; i++)
         {
            /* O(n^2), but number of textures is very limited. */
            FUNC13(textures, ";", tex_size);
            FUNC13(textures, shader->lut[i].id, tex_size);
         }

         FUNC4(conf, "textures", textures);

         FUNC5(textures);

         for (i = 0; i < shader->luts; i++)
         {
            if (preset_path)
            {
               FUNC14(tmp, shader->lut[i].path, tmp_size);
               FUNC9(tmp_rel, tmp, tmp_base, tmp_size);
               FUNC6(tmp_rel);

               FUNC3(conf, shader->lut[i].id, tmp_rel);
            }
            else
               FUNC3(conf, shader->lut[i].id, shader->lut[i].path);

            if (shader->lut[i].filter != RARCH_FILTER_UNSPEC)
            {
               char key[128];
               key[0]  = '\0';
               FUNC14(key, shader->lut[i].id, sizeof(key));
               FUNC13(key, "_linear", sizeof(key));
               FUNC0(conf, key,
                     shader->lut[i].filter == RARCH_FILTER_LINEAR);
            }

            {
               char key[128];
               key[0]  = '\0';
               FUNC14(key, shader->lut[i].id, sizeof(key));
               FUNC13(key, "_wrap_mode", sizeof(key));
               FUNC4(conf, key,
                     FUNC15(shader->lut[i].wrap));
            }

            {
               char key[128];
               key[0]  = '\0';
               FUNC14(key, shader->lut[i].id, sizeof(key));
               FUNC13(key, "_mipmap", sizeof(key));
               FUNC0(conf, key,
                     shader->lut[i].mipmap);
            }
         }
      }
   }

   FUNC5(tmp);
}