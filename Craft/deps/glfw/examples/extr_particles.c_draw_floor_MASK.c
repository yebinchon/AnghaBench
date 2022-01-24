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
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_AND_EXECUTE ; 
 int /*<<< orphan*/  GL_DIFFUSE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_SHININESS ; 
 int /*<<< orphan*/  GL_SPECULAR ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  floor_diffuse ; 
 int /*<<< orphan*/  floor_shininess ; 
 int /*<<< orphan*/  floor_specular ; 
 int /*<<< orphan*/  floor_tex_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (float,float,float) ; 
 int /*<<< orphan*/  FUNC12 (float,float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wireframe ; 

__attribute__((used)) static void FUNC13(void)
{
    static GLuint floor_list = 0;

    if (!wireframe)
    {
        FUNC4(GL_TEXTURE_2D);
        FUNC1(GL_TEXTURE_2D, floor_tex_id);
    }

    // The first time, we build the floor display list
    if (!floor_list)
    {
        floor_list = FUNC7(1);
        FUNC10(floor_list, GL_COMPILE_AND_EXECUTE);

        FUNC9(GL_FRONT, GL_DIFFUSE, floor_diffuse);
        FUNC9(GL_FRONT, GL_SPECULAR, floor_specular);
        FUNC8(GL_FRONT, GL_SHININESS, floor_shininess);

        // Draw floor as a bunch of triangle strips (high tesselation
        // improves lighting)
        FUNC11(0.f, 0.f, 1.f);
        FUNC0(GL_QUADS);
        FUNC12(-1.f, -1.f, 0.f, 0.f, 0);
        FUNC12( 0.f, -1.f, 1.f, 0.f, 0);
        FUNC12( 0.f,  0.f, 1.f, 1.f, 0);
        FUNC12(-1.f,  0.f, 0.f, 1.f, 0);
        FUNC5();

        FUNC6();
    }
    else
        FUNC2(floor_list);

    FUNC3(GL_TEXTURE_2D);

}