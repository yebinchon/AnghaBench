#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_29__ {TYPE_16__* luts; TYPE_10__* shader_preset; TYPE_7__* pass; } ;
typedef  TYPE_8__ wiiu_video_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_25__ {int /*<<< orphan*/  path; } ;
struct video_shader_pass {TYPE_4__ source; } ;
struct texture_image {int width; int height; scalar_t__ pixels; } ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_28__ {TYPE_13__* gfd; void** ps_ubos; void** vs_ubos; } ;
struct TYPE_27__ {int uniformBlockCount; TYPE_5__* uniformBlocks; } ;
struct TYPE_26__ {int /*<<< orphan*/  size; } ;
struct TYPE_24__ {int /*<<< orphan*/  path; } ;
struct TYPE_23__ {int uniformBlockCount; TYPE_1__* uniformBlocks; } ;
struct TYPE_22__ {int /*<<< orphan*/  size; } ;
struct TYPE_21__ {int width; int height; int depth; int pitch; int /*<<< orphan*/  imageSize; void* image; int /*<<< orphan*/  alignment; int /*<<< orphan*/  format; int /*<<< orphan*/  tileMode; int /*<<< orphan*/  dim; } ;
struct TYPE_20__ {int viewNumSlices; TYPE_17__ surface; int /*<<< orphan*/  compMap; } ;
struct TYPE_19__ {TYPE_2__* ps; TYPE_6__* vs; } ;
struct TYPE_18__ {unsigned int passes; unsigned int luts; TYPE_3__* lut; struct video_shader_pass* pass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX2_INVALIDATE_MODE_CPU_TEXTURE ; 
 int /*<<< orphan*/  GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK ; 
 int /*<<< orphan*/  GX2_SURFACE_DIM_TEXTURE_2D ; 
 int /*<<< orphan*/  GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8 ; 
 int /*<<< orphan*/  GX2_TILE_MODE_LINEAR_ALIGNED ; 
 int /*<<< orphan*/  GX2_UNIFORM_BLOCK_ALIGNMENT ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PATH_MAX_LENGTH ; 
 int RARCH_SHADER_SLANG ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  _A ; 
 int /*<<< orphan*/  _B ; 
 int /*<<< orphan*/  _G ; 
 int /*<<< orphan*/  _R ; 
 TYPE_10__* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*) ; 
 TYPE_13__* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct texture_image*) ; 
 scalar_t__ FUNC12 (struct texture_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 scalar_t__ FUNC16 (char const*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC19 (char*,char) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_8__*) ; 

__attribute__((used)) static bool FUNC24(void *data,
      enum rarch_shader_type type, const char *path)
{
   unsigned i;
   config_file_t *conf = NULL;
   wiiu_video_t *wiiu  = (wiiu_video_t *)data;

   if (!wiiu)
      return false;

   FUNC1();
   FUNC23(wiiu);

   if (FUNC16(path))
      return true;

   if (type != RARCH_SHADER_SLANG)
   {
      FUNC6("[GX2] Only Slang shaders are supported. Falling back to stock.\n");
      return false;
   }

   if (!(conf = FUNC21(path)))
      return false;

   wiiu->shader_preset = FUNC7(1, sizeof(*wiiu->shader_preset));

   if (!FUNC20(conf, wiiu->shader_preset))
   {
      FUNC9(wiiu->shader_preset);
      wiiu->shader_preset = NULL;
      return false;
   }

   for (i = 0; i < wiiu->shader_preset->passes; i++)
       FUNC15(wiiu->shader_preset->pass[i].source.path, wiiu->shader_preset);

   FUNC22(conf, wiiu->shader_preset);
   FUNC8(conf);

   for (i = 0; i < wiiu->shader_preset->passes; i++)
   {
      char gfdpath[PATH_MAX_LENGTH];
      struct video_shader_pass *pass = &wiiu->shader_preset->pass[i];

      FUNC18(gfdpath, pass->source.path, PATH_MAX_LENGTH);

      char *ptr = FUNC19(gfdpath, '.');

      if (!ptr)
         ptr = gfdpath + FUNC17(gfdpath);

      *ptr++ = '.';
      *ptr++ = 'g';
      *ptr++ = 's';
      *ptr++ = 'h';
      *ptr++ = '\0';

      wiiu->pass[i].gfd = FUNC10(gfdpath);

      if (!wiiu->pass[i].gfd)
      {
         FUNC23(wiiu);
         return false;
      }

      for (int j = 0; j < 2 && j < wiiu->pass[i].gfd->vs->uniformBlockCount; j++)
      {
         wiiu->pass[i].vs_ubos[j] = FUNC5(wiiu->pass[i].gfd->vs->uniformBlocks[j].size,
                                               GX2_UNIFORM_BLOCK_ALIGNMENT);
         FUNC14(wiiu->pass[i].vs_ubos[j], 0, wiiu->pass[i].gfd->vs->uniformBlocks[j].size);
         FUNC3(GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, wiiu->pass[i].vs_ubos[j],
                       wiiu->pass[i].gfd->vs->uniformBlocks[j].size);
      }

      for (int j = 0; j < 2 && j < wiiu->pass[i].gfd->ps->uniformBlockCount; j++)
      {
         wiiu->pass[i].ps_ubos[j] = FUNC5(wiiu->pass[i].gfd->ps->uniformBlocks[j].size,
                                               GX2_UNIFORM_BLOCK_ALIGNMENT);
         FUNC14(wiiu->pass[i].ps_ubos[j], 0, wiiu->pass[i].gfd->ps->uniformBlocks[j].size);
         FUNC3(GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, wiiu->pass[i].ps_ubos[j],
                       wiiu->pass[i].gfd->ps->uniformBlocks[j].size);
      }
   }

   for (i = 0; i < wiiu->shader_preset->luts; i++)
   {
      struct texture_image image = {};

      if (FUNC12(&image, wiiu->shader_preset->lut[i].path))
      {
         wiiu->luts[i].surface.width       = image.width;
         wiiu->luts[i].surface.height      = image.height;
         wiiu->luts[i].surface.depth       = 1;
         wiiu->luts[i].surface.dim         = GX2_SURFACE_DIM_TEXTURE_2D;
         wiiu->luts[i].surface.tileMode    = GX2_TILE_MODE_LINEAR_ALIGNED;
         wiiu->luts[i].viewNumSlices       = 1;

         wiiu->luts[i].surface.format      = GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8;
         wiiu->luts[i].compMap             = FUNC4(_G, _B, _A, _R);

         FUNC0(&wiiu->luts[i].surface);
         FUNC2(&wiiu->luts[i]);
         wiiu->luts[i].surface.image = FUNC5(wiiu->luts[i].surface.imageSize,
                                       wiiu->luts[i].surface.alignment);

         for (int j = 0; (j < image.height) && (j < wiiu->luts[i].surface.height); j++)
            FUNC13((uint32_t *)wiiu->luts[i].surface.image + (j * wiiu->luts[i].surface.pitch),
                   image.pixels + (j * image.width), image.width * sizeof(image.pixels));

         FUNC3(GX2_INVALIDATE_MODE_CPU_TEXTURE, wiiu->luts[i].surface.image,
                       wiiu->luts[i].surface.imageSize);

         FUNC11(&image);
      }
   }

   return true;
}