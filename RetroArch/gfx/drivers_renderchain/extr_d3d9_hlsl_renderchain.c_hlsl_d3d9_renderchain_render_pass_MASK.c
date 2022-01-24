#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* pass; } ;
struct shader_pass {int /*<<< orphan*/  vprg; int /*<<< orphan*/  fprg; int /*<<< orphan*/  vertex_buf; int /*<<< orphan*/  vertex_decl; TYPE_2__ info; int /*<<< orphan*/  tex; } ;
struct D3D9Vertex {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {TYPE_7__ chain; TYPE_4__* luts; int /*<<< orphan*/  dev; } ;
typedef  TYPE_5__ hlsl_renderchain_t ;
struct TYPE_15__ {unsigned int count; TYPE_3__* data; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int /*<<< orphan*/  filter; } ;
typedef  scalar_t__ CGparameter ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPT_TRIANGLESTRIP ; 
 int /*<<< orphan*/  D3DTEXF_POINT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct shader_pass*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,struct shader_pass*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,struct shader_pass*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,struct shader_pass*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(
      hlsl_renderchain_t *chain,
      struct shader_pass *pass,
      unsigned pass_index)
{
   unsigned i;

   FUNC2(pass, chain->chain.dev);

   FUNC12(chain->chain.dev, 0, pass->tex);
   FUNC10(chain->chain.dev, 0,
         FUNC14(pass->info.pass->filter));
   FUNC9(chain->chain.dev, 0,
         FUNC14(pass->info.pass->filter));

   FUNC13(chain->chain.dev, pass->vertex_decl);
   for (i = 0; i < 4; i++)
      FUNC11(chain->chain.dev, i,
            pass->vertex_buf, 0,
            sizeof(struct D3D9Vertex));

#if 0
   /* Set orig texture. */
   d3d9_hlsl_renderchain_bind_orig(chain, chain->dev, pass);

   /* Set prev textures. */
   d3d9_hlsl_renderchain_bind_prev(chain, chain->dev, pass);

   /* Set lookup textures */
   for (i = 0; i < chain->luts->count; i++)
   {
      CGparameter vparam;
      CGparameter fparam = d3d9_hlsl_get_constant_by_name(
            pass->fprg, chain->luts->data[i].id);
      int bound_index    = -1;

      if (fparam)
      {
         unsigned index  = cgGetParameterResourceIndex(fparam);
         bound_index     = index;

         d3d9_renderchain_add_lut_internal(chain, index, i);
      }

      vparam = d3d9_hlsl_get_constant_by_name(pass->vprg,
            chain->luts->data[i].id);

      if (vparam)
      {
         unsigned index = cgGetParameterResourceIndex(vparam);
         if (index != (unsigned)bound_index)
            d3d9_renderchain_add_lut_internal(chain, index, i);
      }
   }

   /* We only bother binding passes which are two indices behind. */
   if (pass_index >= 3)
      d3d9_hlsl_renderchain_bind_pass(chain, chain->chain.dev, pass, pass_index);

#endif

   FUNC1(chain->chain.dev, D3DPT_TRIANGLESTRIP, 0, 2);

   /* So we don't render with linear filter into render targets,
    * which apparently looked odd (too blurry). */
   FUNC10(chain->chain.dev, 0, D3DTEXF_POINT);
   FUNC9(chain->chain.dev, 0, D3DTEXF_POINT);

   FUNC8(&chain->chain);
}