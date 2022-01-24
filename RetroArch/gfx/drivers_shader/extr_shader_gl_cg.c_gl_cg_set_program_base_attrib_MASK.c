#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* prg; } ;
typedef  TYPE_2__ cg_shader_data_t ;
struct TYPE_3__ {int /*<<< orphan*/  vprg; void* lut_tex; void* vertex; void* color; void* tex; } ;
typedef  void* CGparameter ;

/* Variables and functions */
 scalar_t__ CG_IN ; 
 int /*<<< orphan*/  CG_PROGRAM ; 
 scalar_t__ CG_VARYING ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 char* FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(void *data, unsigned i)
{
   cg_shader_data_t      *cg = (cg_shader_data_t*)data;
   CGparameter         param = FUNC1(
         cg->prg[i].vprg, CG_PROGRAM);

   for (; param; param = FUNC3(param))
   {
      const char *semantic = NULL;
      if (     (FUNC4(param)   != CG_IN)
            || (FUNC6(param) != CG_VARYING))
         continue;

      semantic = FUNC5(param);
      if (!semantic)
         continue;

      FUNC0("[CG]: Found semantic \"%s\" in prog #%u.\n", semantic, i);

      if (
            FUNC7(semantic, "TEXCOORD") ||
            FUNC7(semantic, "TEXCOORD0")
         )
         cg->prg[i].tex     = param;
      else if (
            FUNC7(semantic, "COLOR") ||
            FUNC7(semantic, "COLOR0")
            )
            cg->prg[i].color   = param;
      else if (FUNC7(semantic, "POSITION"))
         cg->prg[i].vertex  = param;
      else if (FUNC7(semantic, "TEXCOORD1"))
         cg->prg[i].lut_tex = param;
   }

   if (!cg->prg[i].tex)
      cg->prg[i].tex     = FUNC2(cg->prg[i].vprg, "IN.tex_coord");
   if (!cg->prg[i].color)
      cg->prg[i].color   = FUNC2(cg->prg[i].vprg, "IN.color");
   if (!cg->prg[i].vertex)
      cg->prg[i].vertex  = FUNC2(cg->prg[i].vprg, "IN.vertex_coord");
   if (!cg->prg[i].lut_tex)
      cg->prg[i].lut_tex = FUNC2(cg->prg[i].vprg, "IN.lut_tex_coord");
}