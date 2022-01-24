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
struct TYPE_4__ {int /*<<< orphan*/  blend_mode_add; int /*<<< orphan*/  blend_mode_normal; } ;
struct TYPE_3__ {int /*<<< orphan*/  hostMem; } ;

/* Variables and functions */
 unsigned int DISPLAY_BUFFER_COUNT ; 
 int DISPLAY_HEIGHT ; 
 int DISPLAY_STRIDE_IN_PIXELS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _vita2d_colorVertexProgram ; 
 int /*<<< orphan*/  _vita2d_context ; 
 TYPE_2__ _vita2d_fragmentPrograms ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _vita2d_textureVertexProgram ; 
 int /*<<< orphan*/  clearFragmentProgram ; 
 int /*<<< orphan*/  clearFragmentProgramId ; 
 int /*<<< orphan*/  clearVertexProgram ; 
 int /*<<< orphan*/  clearVertexProgramId ; 
 int /*<<< orphan*/  clearVerticesUid ; 
 int /*<<< orphan*/  colorFragmentProgramId ; 
 int /*<<< orphan*/  colorVertexProgramId ; 
 TYPE_1__ contextParams ; 
 int /*<<< orphan*/  depthBufferUid ; 
 int /*<<< orphan*/ * displayBufferData ; 
 int /*<<< orphan*/ * displayBufferSync ; 
 int /*<<< orphan*/ * displayBufferUid ; 
 int /*<<< orphan*/  fragmentRingBufferUid ; 
 int /*<<< orphan*/  fragmentUsseRingBufferUid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linearIndicesUid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  patcherBufferUid ; 
 int /*<<< orphan*/  patcherFragmentUsseUid ; 
 int /*<<< orphan*/  patcherVertexUsseUid ; 
 int /*<<< orphan*/  poolUid ; 
 int /*<<< orphan*/  renderTarget ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  shaderPatcher ; 
 int /*<<< orphan*/  stencilBufferUid ; 
 int /*<<< orphan*/  textureFragmentProgramId ; 
 int /*<<< orphan*/  textureTintFragmentProgramId ; 
 int /*<<< orphan*/  textureVertexProgramId ; 
 int /*<<< orphan*/  vdmRingBufferUid ; 
 int /*<<< orphan*/  vertexRingBufferUid ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ vita2d_initialized ; 

int FUNC17()
{
	unsigned int i;

	if (!vita2d_initialized) {
		FUNC0("libvita2d is not initialized!\n");
		return 1;
	}

	// wait until rendering is done
	FUNC9(_vita2d_context);

	// clean up allocations
	FUNC11(shaderPatcher, clearFragmentProgram);
	FUNC12(shaderPatcher, clearVertexProgram);
	FUNC12(shaderPatcher, _vita2d_colorVertexProgram);
	FUNC12(shaderPatcher, _vita2d_textureVertexProgram);

	FUNC1(&_vita2d_fragmentPrograms.blend_mode_normal);
	FUNC1(&_vita2d_fragmentPrograms.blend_mode_add);

	FUNC4(linearIndicesUid);
	FUNC4(clearVerticesUid);

	// wait until display queue is finished before deallocating display buffers
	FUNC8();

	// clean up display queue
	FUNC4(depthBufferUid);
	for (i = 0; i < DISPLAY_BUFFER_COUNT; i++) {
		// clear the buffer then deallocate
		FUNC5(displayBufferData[i], 0, DISPLAY_HEIGHT*DISPLAY_STRIDE_IN_PIXELS*4);
		FUNC4(displayBufferUid[i]);

		// destroy the sync object
		FUNC14(displayBufferSync[i]);
	}

	// free the depth and stencil buffer
	FUNC4(depthBufferUid);
	FUNC4(stencilBufferUid);

	// unregister programs and destroy shader patcher
	FUNC13(shaderPatcher, clearFragmentProgramId);
	FUNC13(shaderPatcher, clearVertexProgramId);
	FUNC13(shaderPatcher, colorFragmentProgramId);
	FUNC13(shaderPatcher, colorVertexProgramId);
	FUNC13(shaderPatcher, textureFragmentProgramId);
	FUNC13(shaderPatcher, textureTintFragmentProgramId);
	FUNC13(shaderPatcher, textureVertexProgramId);

	FUNC10(shaderPatcher);
	FUNC2(patcherFragmentUsseUid);
	FUNC16(patcherVertexUsseUid);
	FUNC4(patcherBufferUid);

	// destroy the render target
	FUNC7(renderTarget);

	// destroy the _vita2d_context
	FUNC6(_vita2d_context);
	FUNC2(fragmentUsseRingBufferUid);
	FUNC4(fragmentRingBufferUid);
	FUNC4(vertexRingBufferUid);
	FUNC4(vdmRingBufferUid);
	FUNC3(contextParams.hostMem);

	FUNC4(poolUid);

	// terminate libgxm
	FUNC15();

	/* if (pgf_module_was_loaded != SCE_SYSMODULE_LOADED)
		sceSysmoduleUnloadModule(SCE_SYSMODULE_PGF); */

	vita2d_initialized = 0;

	return 1;
}