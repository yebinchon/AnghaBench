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
 int /*<<< orphan*/  _vita2d_context ; 
 int /*<<< orphan*/  _vita2d_textureTintColorParam ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float*) ; 
 float* FUNC2 (int,int) ; 

__attribute__((used)) static inline void FUNC3(unsigned int color)
{
	void *texture_tint_color_buffer;
	FUNC0(_vita2d_context, &texture_tint_color_buffer);

	float *tint_color = FUNC2(
		4 * sizeof(float), // RGBA
		sizeof(float));

	tint_color[0] = ((color >> 8*0) & 0xFF)/255.0f;
	tint_color[1] = ((color >> 8*1) & 0xFF)/255.0f;
	tint_color[2] = ((color >> 8*2) & 0xFF)/255.0f;
	tint_color[3] = ((color >> 8*3) & 0xFF)/255.0f;

	FUNC1(texture_tint_color_buffer, _vita2d_textureTintColorParam, 0, 4, tint_color);
}