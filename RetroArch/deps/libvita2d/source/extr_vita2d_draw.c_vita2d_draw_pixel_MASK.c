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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCE_GXM_INDEX_FORMAT_U16 ; 
 int /*<<< orphan*/  SCE_GXM_POLYGON_MODE_POINT ; 
 int /*<<< orphan*/  SCE_GXM_POLYGON_MODE_TRIANGLE_FILL ; 
 int /*<<< orphan*/  SCE_GXM_PRIMITIVE_POINTS ; 
 int /*<<< orphan*/  _vita2d_colorFragmentProgram ; 
 int /*<<< orphan*/  _vita2d_colorVertexProgram ; 
 int /*<<< orphan*/  _vita2d_colorWvpParam ; 
 int /*<<< orphan*/  _vita2d_context ; 
 int /*<<< orphan*/  _vita2d_ortho_matrix ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,int) ; 

void FUNC8(float x, float y, unsigned int color)
{
	vita2d_color_vertex *vertex = (vita2d_color_vertex *)FUNC7(
		1 * sizeof(vita2d_color_vertex), // 1 vertex
		sizeof(vita2d_color_vertex));

	uint16_t *index = (uint16_t *)FUNC7(
		1 * sizeof(uint16_t), // 1 index
		sizeof(uint16_t));

	vertex->x = x;
	vertex->y = y;
	vertex->z = +0.5f;
	vertex->color = color;

	*index = 0;

	FUNC5(_vita2d_context, _vita2d_colorVertexProgram);
	FUNC2(_vita2d_context, _vita2d_colorFragmentProgram);

	void *vertexDefaultBuffer;
	FUNC1(_vita2d_context, &vertexDefaultBuffer);
	FUNC4(vertexDefaultBuffer, _vita2d_colorWvpParam, 0, 16, _vita2d_ortho_matrix);

	FUNC6(_vita2d_context, 0, vertex);
	FUNC3(_vita2d_context, SCE_GXM_POLYGON_MODE_POINT);
	FUNC0(_vita2d_context, SCE_GXM_PRIMITIVE_POINTS, SCE_GXM_INDEX_FORMAT_U16, index, 1);
	FUNC3(_vita2d_context, SCE_GXM_POLYGON_MODE_TRIANGLE_FILL);
}