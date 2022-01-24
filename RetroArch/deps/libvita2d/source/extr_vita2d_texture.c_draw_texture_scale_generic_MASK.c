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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int) ; 
 float FUNC5 (TYPE_2__ const*) ; 
 float FUNC6 (TYPE_2__ const*) ; 

__attribute__((used)) static inline void FUNC7(const vita2d_texture *texture, float x, float y, float x_scale, float y_scale)
{
	vita2d_texture_vertex *vertices = (vita2d_texture_vertex *)FUNC4(
		4 * sizeof(vita2d_texture_vertex), // 4 vertices
		sizeof(vita2d_texture_vertex));

	const float w = x_scale * FUNC6(texture);
	const float h = y_scale * FUNC5(texture);

	vertices[0].x = x;
	vertices[0].y = y;
	vertices[0].z = +0.5f;
	vertices[0].u = 0.0f;
	vertices[0].v = 0.0f;

	vertices[1].x = x + w;
	vertices[1].y = y;
	vertices[1].z = +0.5f;
	vertices[1].u = 1.0f;
	vertices[1].v = 0.0f;

	vertices[2].x = x;
	vertices[2].y = y + h;
	vertices[2].z = +0.5f;
	vertices[2].u = 0.0f;
	vertices[2].v = 1.0f;

	vertices[3].x = x + w;
	vertices[3].y = y + h;
	vertices[3].z = +0.5f;
	vertices[3].u = 1.0f;
	vertices[3].v = 1.0f;

	// Set the texture to the TEXUNIT0
	FUNC1(_vita2d_context, 0, &texture->gxm_tex);

	FUNC2(_vita2d_context, 0, vertices);
	FUNC0(_vita2d_context, SCE_GXM_PRIMITIVE_TRIANGLE_STRIP, SCE_GXM_INDEX_FORMAT_U16, FUNC3(), 4);
}