#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCSM_CACHE_TYPE_T ;
struct TYPE_9__ {int /*<<< orphan*/  vcsm_handle; } ;
struct TYPE_8__ {int /*<<< orphan*/ * attribute_locations; int /*<<< orphan*/  program; } ;
struct TYPE_7__ {int /*<<< orphan*/ * attribute_locations; int /*<<< orphan*/  program; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  y_texture; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE0 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCSM_CACHE_TYPE_HOST ; 
 int /*<<< orphan*/  fb_height ; 
 int /*<<< orphan*/  fb_name ; 
 int /*<<< orphan*/  fb_tex_name ; 
 int /*<<< orphan*/  fb_width ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quad_vbo ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_5__ vcsm_info ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*) ; 
 TYPE_4__ vcsm_square_oes_shader ; 
 TYPE_2__ vcsm_square_shader ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*) ; 

__attribute__((used)) static int FUNC19(RASPITEX_STATE *raspitex_state)
{
    unsigned char *vcsm_buffer = NULL;
    VCSM_CACHE_TYPE_T cache_type;

    FUNC15("%s", VCOS_FUNCTION);

    FUNC6(255, 0, 0, 255);

    FUNC0(FUNC3(GL_FRAMEBUFFER, fb_name));
    FUNC0(FUNC13(0, 0, fb_width, fb_height));
    FUNC5(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Fill the viewport with the camFill the viewport with the camera image
    FUNC0(FUNC11(vcsm_square_oes_shader.program));
    FUNC0(FUNC1(GL_TEXTURE0));
    FUNC0(FUNC4(GL_TEXTURE_EXTERNAL_OES, raspitex_state->y_texture));
    FUNC0(FUNC2(GL_ARRAY_BUFFER, quad_vbo));
    FUNC0(FUNC9(vcsm_square_oes_shader.attribute_locations[0]));
    FUNC0(FUNC12(vcsm_square_oes_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, 0));
    FUNC0(FUNC8(GL_TRIANGLES, 0, 6));

    FUNC0(FUNC10());

    // Make the buffer CPU addressable with host cache enabled
    vcsm_buffer = (unsigned char *) FUNC16(vcsm_info.vcsm_handle, VCSM_CACHE_TYPE_HOST, &cache_type);
    if (! vcsm_buffer) {
        FUNC14("Failed to lock VCSM buffer for handle %d\n", vcsm_info.vcsm_handle);
        return -1;
    }
    FUNC15("Locked vcsm handle %d at %p\n", vcsm_info.vcsm_handle, vcsm_buffer);

    FUNC17(vcsm_buffer);

    // Release the locked texture memory to flush the CPU cache and allow GPU
    // to read it
    FUNC18(vcsm_buffer);

    // Enable default window surface
    FUNC0(FUNC3(GL_FRAMEBUFFER, 0));

    // Draw the modified texture buffer to the screen
    FUNC0(FUNC13(raspitex_state->x, raspitex_state->y, raspitex_state->width, raspitex_state->height));
    FUNC0(FUNC11(vcsm_square_shader.program));
    FUNC0(FUNC1(GL_TEXTURE0));
    FUNC0(FUNC4(GL_TEXTURE_2D, fb_tex_name));
    FUNC0(FUNC9(vcsm_square_shader.attribute_locations[0]));
    FUNC0(FUNC12(vcsm_square_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, 0));
    FUNC0(FUNC8(GL_TRIANGLES, 0, 6));

    FUNC0(FUNC7(vcsm_square_shader.attribute_locations[0]));
    FUNC0(FUNC11(0));

    return 0;
}