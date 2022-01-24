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
typedef  int /*<<< orphan*/  vita2d_texture_vertex ;
struct TYPE_3__ {int /*<<< orphan*/  gxm_tex; } ;
typedef  TYPE_1__ vita2d_texture ;
typedef  int /*<<< orphan*/  SceGxmPrimitiveType ;

/* Variables and functions */
 int /*<<< orphan*/  SCE_GXM_INDEX_FORMAT_U16 ; 
 int /*<<< orphan*/  SCE_GXM_POLYGON_MODE_TRIANGLE_FILL ; 
 int /*<<< orphan*/  _vita2d_context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(const vita2d_texture *texture, SceGxmPrimitiveType mode, const vita2d_texture_vertex *vertices, size_t count, unsigned int color)
{
	FUNC5();
	FUNC6();
	FUNC4(color);

	FUNC1(_vita2d_context, SCE_GXM_POLYGON_MODE_TRIANGLE_FILL);

	// Set the texture to the TEXUNIT0
	FUNC2(_vita2d_context, 0, &texture->gxm_tex);

	FUNC3(_vita2d_context, 0, vertices);
	FUNC0(_vita2d_context, mode, SCE_GXM_INDEX_FORMAT_U16, FUNC7(), count);
}