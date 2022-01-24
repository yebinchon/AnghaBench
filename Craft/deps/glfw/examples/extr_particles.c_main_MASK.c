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
typedef  int /*<<< orphan*/  thrd_t ;
struct TYPE_5__ {double t; float dt; int /*<<< orphan*/  d_done; int /*<<< orphan*/  p_done; int /*<<< orphan*/  particles_lock; scalar_t__ d_frame; scalar_t__ p_frame; } ;
struct TYPE_4__ {int width; int height; int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  F_TEX_HEIGHT ; 
 int /*<<< orphan*/  F_TEX_WIDTH ; 
 int /*<<< orphan*/  GLFW_BLUE_BITS ; 
 int /*<<< orphan*/  GLFW_CURSOR ; 
 int /*<<< orphan*/  GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  GLFW_GREEN_BITS ; 
 int /*<<< orphan*/  GLFW_RED_BITS ; 
 int /*<<< orphan*/  GLFW_REFRESH_RATE ; 
 int /*<<< orphan*/  GL_CLAMP ; 
 int /*<<< orphan*/  GL_FILL ; 
 int /*<<< orphan*/  GL_FRONT_AND_BACK ; 
 int /*<<< orphan*/  GL_LIGHT_MODEL_COLOR_CONTROL_EXT ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_LUMINANCE ; 
 int /*<<< orphan*/  GL_REPEAT ; 
 int /*<<< orphan*/  GL_SEPARATE_SPECULAR_COLOR_EXT ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  P_TEX_HEIGHT ; 
 int /*<<< orphan*/  P_TEX_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  floor_tex_id ; 
 int /*<<< orphan*/  floor_texture ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int,int)) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (double) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtx_timed ; 
 int /*<<< orphan*/  particle_tex_id ; 
 int /*<<< orphan*/  particle_texture ; 
 int /*<<< orphan*/  physics_thread_main ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ thrd_success ; 
 TYPE_2__ thread_sync ; 
 int /*<<< orphan*/  FUNC35 () ; 
 scalar_t__ wireframe ; 

int FUNC36(int argc, char** argv)
{
    int ch, width, height;
    thrd_t physics_thread = 0;
    GLFWwindow* window;
    GLFWmonitor* monitor = NULL;

    if (!FUNC19())
    {
        FUNC3(stderr, "Failed to initialize GLFW\n");
        FUNC2(EXIT_FAILURE);
    }

    while ((ch = FUNC4(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'f':
                monitor = FUNC16();
                break;
            case 'h':
                FUNC35();
                FUNC2(EXIT_SUCCESS);
        }
    }

    if (monitor)
    {
        const GLFWvidmode* mode = FUNC18(monitor);

        FUNC29(GLFW_RED_BITS, mode->redBits);
        FUNC29(GLFW_GREEN_BITS, mode->greenBits);
        FUNC29(GLFW_BLUE_BITS, mode->blueBits);
        FUNC29(GLFW_REFRESH_RATE, mode->refreshRate);

        width  = mode->width;
        height = mode->height;
    }
    else
    {
        width  = 640;
        height = 480;
    }

    window = FUNC12(width, height, "Particle Engine", monitor, NULL);
    if (!window)
    {
        FUNC3(stderr, "Failed to create GLFW window\n");
        FUNC28();
        FUNC2(EXIT_FAILURE);
    }

    if (monitor)
        FUNC23(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    FUNC20(window);
    FUNC27(1);

    FUNC22(window, resize_callback);
    FUNC24(window, key_callback);

    // Set initial aspect ratio
    FUNC15(window, &width, &height);
    FUNC32(window, width, height);

    // Upload particle texture
    FUNC6(1, &particle_tex_id);
    FUNC5(GL_TEXTURE_2D, particle_tex_id);
    FUNC8(GL_UNPACK_ALIGNMENT, 1);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    FUNC10(GL_TEXTURE_2D, 0, GL_LUMINANCE, P_TEX_WIDTH, P_TEX_HEIGHT,
                 0, GL_LUMINANCE, GL_UNSIGNED_BYTE, particle_texture);

    // Upload floor texture
    FUNC6(1, &floor_tex_id);
    FUNC5(GL_TEXTURE_2D, floor_tex_id);
    FUNC8(GL_UNPACK_ALIGNMENT, 1);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    FUNC11(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    FUNC10(GL_TEXTURE_2D, 0, GL_LUMINANCE, F_TEX_WIDTH, F_TEX_HEIGHT,
                 0, GL_LUMINANCE, GL_UNSIGNED_BYTE, floor_texture);

    if (FUNC14("GL_EXT_separate_specular_color"))
    {
        FUNC7(GL_LIGHT_MODEL_COLOR_CONTROL_EXT,
                      GL_SEPARATE_SPECULAR_COLOR_EXT);
    }

    // Set filled polygon mode as default (not wireframe)
    FUNC9(GL_FRONT_AND_BACK, GL_FILL);
    wireframe = 0;

    // Set initial times
    thread_sync.t  = 0.0;
    thread_sync.dt = 0.001f;
    thread_sync.p_frame = 0;
    thread_sync.d_frame = 0;

    FUNC31(&thread_sync.particles_lock, mtx_timed);
    FUNC0(&thread_sync.p_done);
    FUNC0(&thread_sync.d_done);

    if (FUNC33(&physics_thread, physics_thread_main, window) != thrd_success)
    {
        FUNC28();
        FUNC2(EXIT_FAILURE);
    }

    FUNC25(0.0);

    while (!FUNC30(window))
    {
        FUNC1(window, FUNC17());

        FUNC26(window);
        FUNC21();
    }

    FUNC34(physics_thread, NULL);

    FUNC13(window);
    FUNC28();

    FUNC2(EXIT_SUCCESS);
}