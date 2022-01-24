#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * attribute_locations; int /*<<< orphan*/  program; } ;
struct TYPE_4__ {int /*<<< orphan*/  texture; int /*<<< orphan*/  v_texture; int /*<<< orphan*/  u_texture; int /*<<< orphan*/  y_texture; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_TEXTURE0 ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  varray ; 
 TYPE_2__ yuv_shader ; 

__attribute__((used)) static int FUNC10(RASPITEX_STATE *raspitex_state)
{
    FUNC3(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    FUNC0(FUNC7(yuv_shader.program));
    FUNC0(FUNC1(GL_TEXTURE0));
    FUNC0(FUNC6(yuv_shader.attribute_locations[0]));
    FUNC0(FUNC9(yuv_shader.attribute_locations[0],
             2, GL_FLOAT, GL_FALSE, 0, varray));

    // Y plane
    FUNC0(FUNC2(GL_TEXTURE_EXTERNAL_OES, raspitex_state->y_texture));
    FUNC0(FUNC8(yuv_shader.attribute_locations[1], -1.0f, 1.0f));
    FUNC0(FUNC5(GL_TRIANGLES, 0, 6));

    // U plane
    FUNC0(FUNC2(GL_TEXTURE_EXTERNAL_OES, raspitex_state->u_texture));
    FUNC0(FUNC8(yuv_shader.attribute_locations[1], 0.0f, 1.0f));
    FUNC0(FUNC5(GL_TRIANGLES, 0, 6));

    // V plane
    FUNC0(FUNC2(GL_TEXTURE_EXTERNAL_OES, raspitex_state->v_texture));
    FUNC0(FUNC8(yuv_shader.attribute_locations[1], 0.0f, 0.0f));
    FUNC0(FUNC5(GL_TRIANGLES, 0, 6));

    // RGB plane
    FUNC0(FUNC2(GL_TEXTURE_EXTERNAL_OES, raspitex_state->texture));
    FUNC0(FUNC8(yuv_shader.attribute_locations[1], -1.0f, 0.0f));
    FUNC0(FUNC5(GL_TRIANGLES, 0, 6));

    FUNC0(FUNC4(yuv_shader.attribute_locations[0]));
    FUNC0(FUNC7(0));
    return 0;
}