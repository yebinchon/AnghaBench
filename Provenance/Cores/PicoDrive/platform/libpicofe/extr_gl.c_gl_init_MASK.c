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
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ EGLint ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;
typedef  int /*<<< orphan*/  EGLNativeDisplayType ;
typedef  int /*<<< orphan*/ * EGLConfig ;

/* Variables and functions */
 scalar_t__ EGL_NONE ; 
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_CW ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT_5_6_5 ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 void* FUNC0 (int,int) ; 
 scalar_t__ ectxt ; 
 scalar_t__ edpy ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*,int /*<<< orphan*/ **,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ esfc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* gl_es_display ; 
 void* gl_es_surface ; 
 scalar_t__ FUNC18 (char*) ; 
 int FUNC19 (void**,void**,int*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC20(void *display, void *window, int *quirks)
{
	EGLConfig ecfg = NULL;
	GLuint texture_name = 0;
	void *tmp_texture_mem = NULL;
	EGLint num_config;
	int retval = -1;
	int ret;
	EGLint attr[] =
	{
		EGL_NONE
	};

	ret = FUNC19(&display, &window, quirks);
	if (ret != 0) {
		FUNC8(stderr, "gl_platform_init failed with %d\n", ret);
		goto out;
	}

	tmp_texture_mem = FUNC0(1, 1024 * 512 * 2);
	if (tmp_texture_mem == NULL) {
		FUNC8(stderr, "OOM\n");
		goto out;
	}

	edpy = FUNC4((EGLNativeDisplayType)display);
	if (edpy == EGL_NO_DISPLAY) {
		FUNC8(stderr, "Failed to get EGL display\n");
		goto out;
	}

	if (!FUNC6(edpy, NULL, NULL)) {
		FUNC8(stderr, "Failed to initialize EGL\n");
		goto out;
	}

	if (!FUNC1(edpy, attr, &ecfg, 1, &num_config)) {
		FUNC8(stderr, "Failed to choose config (%x)\n", FUNC5());
		goto out;
	}

	if (ecfg == NULL || num_config == 0) {
		FUNC8(stderr, "No EGL configs available\n");
		goto out;
	}

	esfc = FUNC3(edpy, ecfg,
		(EGLNativeWindowType)window, NULL);
	if (esfc == EGL_NO_SURFACE) {
		FUNC8(stderr, "Unable to create EGL surface (%x)\n",
			FUNC5());
		goto out;
	}

	ectxt = FUNC2(edpy, ecfg, EGL_NO_CONTEXT, NULL);
	if (ectxt == EGL_NO_CONTEXT) {
		FUNC8(stderr, "Unable to create EGL context (%x)\n",
			FUNC5());
		goto out;
	}

	FUNC7(edpy, esfc, esfc, ectxt);

	FUNC11(GL_TEXTURE_2D);

	FUNC14(1, &texture_name);

	FUNC10(GL_TEXTURE_2D, texture_name);

	FUNC16(GL_TEXTURE_2D, 0, GL_RGB, 1024, 512, 0, GL_RGB,
		GL_UNSIGNED_SHORT_5_6_5, tmp_texture_mem);
	if (FUNC18("glTexImage2D"))
		goto out;

	// no mipmaps
	FUNC17(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	FUNC17(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	//glViewport(0, 0, 512, 512);
	FUNC15();
	FUNC13(GL_CW);
	FUNC11(GL_CULL_FACE);

	FUNC12(GL_TEXTURE_COORD_ARRAY);
	FUNC12(GL_VERTEX_ARRAY);

	if (FUNC18("init"))
		goto out;

	gl_es_display = (void *)edpy;
	gl_es_surface = (void *)esfc;
	retval = 0;
out:
	FUNC9(tmp_texture_mem);
	return retval;
}