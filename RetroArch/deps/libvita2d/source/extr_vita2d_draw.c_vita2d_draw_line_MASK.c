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
struct TYPE_3__ {float x; float y; float z; unsigned int color; } ;
typedef  TYPE_1__ vita2d_color_vertex ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCE_GXM_INDEX_FORMAT_U16 ; 
 int /*<<< orphan*/  SCE_GXM_POLYGON_MODE_LINE ; 
 int /*<<< orphan*/  SCE_GXM_POLYGON_MODE_TRIANGLE_FILL ; 
 int /*<<< orphan*/  SCE_GXM_PRIMITIVE_LINES ; 
 int /*<<< orphan*/  _vita2d_colorFragmentProgram ; 
 int /*<<< orphan*/  _vita2d_colorVertexProgram ; 
 int /*<<< orphan*/  _vita2d_colorWvpParam ; 
 int /*<<< orphan*/  _vita2d_context ; 
 int /*<<< orphan*/  _vita2d_ortho_matrix ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,int) ; 

void FUNC8(float x0, float y0, float x1, float y1, unsigned int color)
{
	vita2d_color_vertex *vertices = (vita2d_color_vertex *)FUNC7(
		2 * sizeof(vita2d_color_vertex), // 2 vertices
		sizeof(vita2d_color_vertex));

	uint16_t *indices = (uint16_t *)FUNC7(
		2 * sizeof(uint16_t), // 2 indices
		sizeof(uint16_t));

	vertices[0].x = x0;
	vertices[0].y = y0;
	vertices[0].z = +0.5f;
	vertices[0].color = color;

	vertices[1].x = x1;
	vertices[1].y = y1;
	vertices[1].z = +0.5f;
	vertices[1].color = color;

	indices[0] = 0;
	indices[1] = 1;

	FUNC5(_vita2d_context, _vita2d_colorVertexProgram);
	FUNC2(_vita2d_context, _vita2d_colorFragmentProgram);

	void *vertexDefaultBuffer;
	FUNC1(_vita2d_context, &vertexDefaultBuffer);
	FUNC4(vertexDefaultBuffer, _vita2d_colorWvpParam, 0, 16, _vita2d_ortho_matrix);

	FUNC6(_vita2d_context, 0, vertices);
	FUNC3(_vita2d_context, SCE_GXM_POLYGON_MODE_LINE);
	FUNC0(_vita2d_context, SCE_GXM_PRIMITIVE_LINES, SCE_GXM_INDEX_FORMAT_U16, indices, 2);
	FUNC3(_vita2d_context, SCE_GXM_POLYGON_MODE_TRIANGLE_FILL);
}