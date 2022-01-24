#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct shader_pass {int /*<<< orphan*/  vprg; int /*<<< orphan*/  fprg; int /*<<< orphan*/  vtable; int /*<<< orphan*/  ftable; } ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9 ;
typedef  int /*<<< orphan*/  ID3DXBuffer ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void**) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static bool FUNC7(
      LPDIRECT3DDEVICE9 dev,
      struct shader_pass *pass,
      const char *prog)
{
   ID3DXBuffer *listing_f                    = NULL;
   ID3DXBuffer *listing_v                    = NULL;
   ID3DXBuffer *code_f                       = NULL;
   ID3DXBuffer *code_v                       = NULL;

   if (FUNC6(prog))
      return false;

   if (!FUNC4(prog, NULL, NULL,
            "main_fragment", "ps_3_0", 0, &code_f, &listing_f, &pass->ftable))
   {
      FUNC0("Could not compile fragment shader program (%s)..\n", prog);
      goto error;
   }
   if (!FUNC4(prog, NULL, NULL,
            "main_vertex", "vs_3_0", 0, &code_v, &listing_v, &pass->vtable))
   {
      FUNC0("Could not compile vertex shader program (%s)..\n", prog);
      goto error;
   }

   FUNC1(dev,  (const DWORD*)FUNC5(code_f),  (void**)&pass->fprg);
   FUNC2(dev, (const DWORD*)FUNC5(code_v), (void**)&pass->vprg);
   FUNC3((void*)code_f);
   FUNC3((void*)code_v);

   return true;

error:
   FUNC0("Cg/HLSL error:\n");
   if (listing_f)
      FUNC0("Fragment:\n%s\n", (char*)FUNC5(listing_f));
   if (listing_v)
      FUNC0("Vertex:\n%s\n", (char*)FUNC5(listing_v));
   FUNC3((void*)listing_f);
   FUNC3((void*)listing_v);

   return false;
}