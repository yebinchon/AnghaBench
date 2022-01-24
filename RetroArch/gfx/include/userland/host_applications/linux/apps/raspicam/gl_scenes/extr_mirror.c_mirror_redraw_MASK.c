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
struct TYPE_5__ {int /*<<< orphan*/ * attribute_locations; int /*<<< orphan*/ * uniform_locations; int /*<<< orphan*/  program; } ;
struct TYPE_4__ {int /*<<< orphan*/  texture; } ;
typedef  TYPE_1__ RASPITEX_STATE ;
typedef  float GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 TYPE_2__ mirror_shader ; 

__attribute__((used)) static int FUNC9(RASPITEX_STATE *raspitex_state) {
    static float offset = 0.0;

    // Start with a clear screen
    FUNC2(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Bind the OES texture which is used to render the camera preview
    FUNC1(GL_TEXTURE_EXTERNAL_OES, raspitex_state->texture);

    offset += 0.05;
    FUNC0(FUNC7(mirror_shader.program));
    FUNC0(FUNC5(mirror_shader.attribute_locations[0]));
    GLfloat varray[] = {
        -1.0f, -1.0f,
        1.0f,  1.0f,
        1.0f, -1.0f,

        -1.0f,  1.0f,
        1.0f,  1.0f,
        -1.0f, -1.0f,
    };
    FUNC0(FUNC8(mirror_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, varray));
    FUNC0(FUNC6(mirror_shader.uniform_locations[1], offset));
    FUNC0(FUNC4(GL_TRIANGLES, 0, 6));

    FUNC0(FUNC3(mirror_shader.attribute_locations[0]));
    FUNC0(FUNC7(0));
    return 0;
}