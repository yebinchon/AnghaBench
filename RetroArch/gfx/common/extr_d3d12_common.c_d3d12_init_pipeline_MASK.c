#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int Count; } ;
struct TYPE_12__ {int /*<<< orphan*/  CullMode; int /*<<< orphan*/  FillMode; } ;
struct TYPE_11__ {void* BytecodeLength; int /*<<< orphan*/ * pShaderBytecode; } ;
struct TYPE_10__ {void* BytecodeLength; int /*<<< orphan*/ * pShaderBytecode; } ;
struct TYPE_9__ {void* BytecodeLength; int /*<<< orphan*/ * pShaderBytecode; } ;
struct TYPE_14__ {int NumRenderTargets; TYPE_5__ SampleDesc; TYPE_4__ RasterizerState; int /*<<< orphan*/  SampleMask; TYPE_3__ GS; TYPE_2__ PS; TYPE_1__ VS; } ;
typedef  scalar_t__ D3DBlob ;
typedef  TYPE_6__ D3D12_GRAPHICS_PIPELINE_STATE_DESC ;
typedef  int /*<<< orphan*/  D3D12PipelineState ;
typedef  int /*<<< orphan*/  D3D12Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D3D12_CULL_MODE_NONE ; 
 int /*<<< orphan*/  D3D12_FILL_MODE_SOLID ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  UINT_MAX ; 

bool FUNC3(
      D3D12Device                         device,
      D3DBlob                             vs_code,
      D3DBlob                             ps_code,
      D3DBlob                             gs_code,
      D3D12_GRAPHICS_PIPELINE_STATE_DESC* desc,
      D3D12PipelineState*                 out)
{
   if (vs_code)
   {
      desc->VS.pShaderBytecode = FUNC1(vs_code);
      desc->VS.BytecodeLength  = FUNC2(vs_code);
   }
   else
   {
      desc->VS.pShaderBytecode = NULL;
      desc->VS.BytecodeLength  = 0;
   }

   if (ps_code)
   {
      desc->PS.pShaderBytecode = FUNC1(ps_code);
      desc->PS.BytecodeLength  = FUNC2(ps_code);
   }
   else
   {
      desc->PS.pShaderBytecode = NULL;
      desc->PS.BytecodeLength  = 0;
   }

   if (gs_code)
   {
      desc->GS.pShaderBytecode = FUNC1(gs_code);
      desc->GS.BytecodeLength  = FUNC2(gs_code);
   }
   else
   {
      desc->GS.pShaderBytecode = NULL;
      desc->GS.BytecodeLength  = 0;
   }

   desc->SampleMask               = UINT_MAX;
   desc->RasterizerState.FillMode = D3D12_FILL_MODE_SOLID;
   desc->RasterizerState.CullMode = D3D12_CULL_MODE_NONE;
   desc->NumRenderTargets         = 1;
   desc->SampleDesc.Count         = 1;

   FUNC0(device, desc, out);

   return true;
}