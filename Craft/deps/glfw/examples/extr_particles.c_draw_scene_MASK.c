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
typedef  scalar_t__ mat4x4 ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_CCW ; 
 int GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_EXP ; 
 int /*<<< orphan*/  GL_FOG ; 
 int /*<<< orphan*/  GL_FOG_COLOR ; 
 int /*<<< orphan*/  GL_FOG_DENSITY ; 
 int /*<<< orphan*/  GL_FOG_MODE ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_TRUE ; 
 double M_PI ; 
 int /*<<< orphan*/  aspect_ratio ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,float) ; 
 int /*<<< orphan*/  fog_color ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC19 (double,double,double) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,float,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 double FUNC22 (double) ; 

__attribute__((used)) static void FUNC23(GLFWwindow* window, double t)
{
    double xpos, ypos, zpos, angle_x, angle_y, angle_z;
    static double t_old = 0.0;
    float dt;
    mat4x4 projection;

    // Calculate frame-to-frame delta time
    dt = (float) (t - t_old);
    t_old = t;

    FUNC20(projection,
                       65.f * (float) M_PI / 180.f,
                       aspect_ratio,
                       1.0, 60.0);

    FUNC5(0.1f, 0.1f, 0.1f, 1.f);
    FUNC4(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    FUNC17(GL_PROJECTION);
    FUNC16((const GLfloat*) projection);

    // Setup camera
    FUNC17(GL_MODELVIEW);
    FUNC15();

    // Rotate camera
    angle_x = 90.0 - 10.0;
    angle_y = 10.0 * FUNC22(0.3 * t);
    angle_z = 10.0 * t;
    FUNC18(-angle_x, 1.0, 0.0, 0.0);
    FUNC18(-angle_y, 0.0, 1.0, 0.0);
    FUNC18(-angle_z, 0.0, 0.0, 1.0);

    // Translate camera
    xpos =  15.0 * FUNC22((M_PI / 180.0) * angle_z) +
             2.0 * FUNC22((M_PI / 180.0) * 3.1 * t);
    ypos = -15.0 * FUNC0((M_PI / 180.0) * angle_z) +
             2.0 * FUNC0((M_PI / 180.0) * 2.9 * t);
    zpos = 4.0 + 2.0 * FUNC0((M_PI / 180.0) * 4.9 * t);
    FUNC19(-xpos, -ypos, -zpos);

    FUNC14(GL_CCW);
    FUNC6(GL_BACK);
    FUNC10(GL_CULL_FACE);

    FUNC21();
    FUNC10(GL_LIGHTING);

    FUNC10(GL_FOG);
    FUNC13(GL_FOG_MODE, GL_EXP);
    FUNC11(GL_FOG_DENSITY, 0.05f);
    FUNC12(GL_FOG_COLOR, fog_color);

    FUNC1();

    FUNC10(GL_DEPTH_TEST);
    FUNC7(GL_LEQUAL);
    FUNC8(GL_TRUE);

    FUNC2();

    FUNC9(GL_LIGHTING);
    FUNC9(GL_FOG);

    // Particles must be drawn after all solid objects have been drawn
    FUNC3(window, t, dt);

    // Z-buffer not needed anymore
    FUNC9(GL_DEPTH_TEST);
}