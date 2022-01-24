#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float x; float y; float z; float u; float v; } ;
typedef  TYPE_1__ vita2d_texture_vertex ;
struct TYPE_8__ {int /*<<< orphan*/  gxm_tex; } ;
typedef  TYPE_2__ vita2d_texture ;

/* Variables and functions */
 int /*<<< orphan*/  SCE_GXM_INDEX_FORMAT_U16 ; 
 int /*<<< orphan*/  SCE_GXM_PRIMITIVE_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  _vita2d_context ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 float FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int,int) ; 
 float FUNC7 (TYPE_2__ const*) ; 
 float FUNC8 (TYPE_2__ const*) ; 

__attribute__((used)) static inline void FUNC9(const vita2d_texture *texture, float x, float y, float rad, float center_x, float center_y)
{
	vita2d_texture_vertex *vertices = (vita2d_texture_vertex *)FUNC6(
		4 * sizeof(vita2d_texture_vertex), // 4 vertices
		sizeof(vita2d_texture_vertex));

	const float w = FUNC8(texture);
	const float h = FUNC7(texture);

	vertices[0].x = -center_x;
	vertices[0].y = -center_y;
	vertices[0].z = +0.5f;
	vertices[0].u = 0.0f;
	vertices[0].v = 0.0f;

	vertices[1].x = w - center_x;
	vertices[1].y = -center_y;
	vertices[1].z = +0.5f;
	vertices[1].u = 1.0f;
	vertices[1].v = 0.0f;

	vertices[2].x = -center_x;
	vertices[2].y = h - center_y;
	vertices[2].z = +0.5f;
	vertices[2].u = 0.0f;
	vertices[2].v = 1.0f;

	vertices[3].x = w - center_x;
	vertices[3].y = h - center_y;
	vertices[3].z = +0.5f;
	vertices[3].u = 1.0f;
	vertices[3].v = 1.0f;

	float c = FUNC0(rad);
	float s = FUNC4(rad);
	int i;
	for (i = 0; i < 4; ++i) { // Rotate and translate
		float _x = vertices[i].x;
		float _y = vertices[i].y;
		vertices[i].x = _x*c - _y*s + x;
		vertices[i].y = _x*s + _y*c + y;
	}

	// Set the texture to the TEXUNIT0
	FUNC2(_vita2d_context, 0, &texture->gxm_tex);

	FUNC3(_vita2d_context, 0, vertices);
	FUNC1(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, SCE_GXM_INDEX_FORMAT_U16, FUNC5(), 4);
}