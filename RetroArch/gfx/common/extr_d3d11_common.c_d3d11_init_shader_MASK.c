#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  layout; int /*<<< orphan*/  gs; int /*<<< orphan*/  ps; int /*<<< orphan*/  vs; } ;
typedef  TYPE_1__ d3d11_shader_t ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/ * D3DBlob ;
typedef  int /*<<< orphan*/  D3D11_INPUT_ELEMENT_DESC ;
typedef  int /*<<< orphan*/  D3D11Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,size_t,scalar_t__,scalar_t__,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ **) ; 

bool FUNC9(
      D3D11Device                     device,
      const char*                     src,
      size_t                          size,
      const void*                     src_name,
      LPCSTR                          vs_entry,
      LPCSTR                          ps_entry,
      LPCSTR                          gs_entry,
      const D3D11_INPUT_ELEMENT_DESC* input_element_descs,
      UINT                            num_elements,
      d3d11_shader_t*                 out)
{
   D3DBlob vs_code = NULL;
   D3DBlob ps_code = NULL;
   D3DBlob gs_code = NULL;

   bool success = true;

   if (!src) /* LPCWSTR filename */
   {
      if (vs_entry && !FUNC8((LPCWSTR)src_name, vs_entry, "vs_4_0", &vs_code))
         success = false;
      if (ps_entry && !FUNC8((LPCWSTR)src_name, ps_entry, "ps_4_0", &ps_code))
         success = false;
      if (gs_entry && !FUNC8((LPCWSTR)src_name, gs_entry, "gs_4_0", &gs_code))
         success = false;
   }
   else /* char array */
   {
      if (vs_entry && !FUNC7(src, size, (LPCSTR)src_name, vs_entry, "vs_4_0", &vs_code))
         success = false;
      if (ps_entry && !FUNC7(src, size, (LPCSTR)src_name, ps_entry, "ps_4_0", &ps_code))
         success = false;
      if (gs_entry && !FUNC7(src, size, (LPCSTR)src_name, gs_entry, "gs_4_0", &gs_code))
         success = false;
   }

   if (vs_code)
      FUNC3(
            device, FUNC4(vs_code), FUNC5(vs_code), NULL, &out->vs);

   if (ps_code)
      FUNC2(
            device, FUNC4(ps_code), FUNC5(ps_code), NULL, &out->ps);

   if (gs_code)
      FUNC0(
            device, FUNC4(gs_code), FUNC5(gs_code), NULL, &out->gs);

   if (vs_code && input_element_descs)
      FUNC1(
            device, input_element_descs, num_elements, FUNC4(vs_code),
            FUNC5(vs_code), &out->layout);

   FUNC6(vs_code);
   FUNC6(ps_code);
   FUNC6(gs_code);

   return success;
}