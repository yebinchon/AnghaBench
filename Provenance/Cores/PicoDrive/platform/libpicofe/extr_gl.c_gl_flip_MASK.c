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

/* Variables and functions */
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT_5_6_5 ; 
 int /*<<< orphan*/  edpy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  esfc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 float* texture ; 
 int /*<<< orphan*/  vertices ; 

int FUNC7(const void *fb, int w, int h)
{
	static int old_w, old_h;

	if (fb != NULL) {
		if (w != old_w || h != old_h) {
			float f_w = (float)w / 1024.0f;
			float f_h = (float)h / 512.0f;
			texture[1*2 + 0] = f_w;
			texture[2*2 + 1] = f_h;
			texture[3*2 + 0] = f_w;
			texture[3*2 + 1] = f_h;
			old_w = w;
			old_h = h;
		}

		FUNC3(GL_TEXTURE_2D, 0, 0, 0, w, h,
			GL_RGB, GL_UNSIGNED_SHORT_5_6_5, fb);
		if (FUNC5("glTexSubImage2D"))
			return -1;
	}

	FUNC4(3, GL_FLOAT, 0, vertices);
	FUNC2(2, GL_FLOAT, 0, texture);
	FUNC1(GL_TRIANGLE_STRIP, 0, 4);

	if (FUNC5("glDrawArrays"))
		return -1;

	FUNC0(edpy, esfc);
	if (FUNC6("eglSwapBuffers"))
		return -1;

	return 0;
}