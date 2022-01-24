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
typedef  unsigned int GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  GLADloadproc ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MAJOR ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MINOR ; 
 int GLFW_OPENGL_CORE_PROFILE ; 
 int /*<<< orphan*/  GLFW_OPENGL_FORWARD_COMPAT ; 
 int /*<<< orphan*/  GLFW_OPENGL_PROFILE ; 
 int /*<<< orphan*/  GLFW_RESIZABLE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int GL_FALSE ; 
 int /*<<< orphan*/  GL_LINES ; 
 int GL_TRUE ; 
 int /*<<< orphan*/  GL_UNSIGNED_INT ; 
 int MAP_NUM_LINES ; 
 int MAX_ITER ; 
 scalar_t__ NUM_ITER_AT_A_TIME ; 
 float aspect_ratio ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fragment_shader_text ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,float*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ glfwGetProcAddress ; 
 double FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float* modelview_matrix ; 
 float* projection_matrix ; 
 float FUNC23 (float) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  vertex_shader_text ; 
 float view_angle ; 
 float z_far ; 
 float z_near ; 

int FUNC26(int argc, char** argv)
{
    GLFWwindow* window;
    int iter;
    double dt;
    double last_update_time;
    int frame;
    float f;
    GLint uloc_modelview;
    GLint uloc_project;

    GLuint shader_program;

    FUNC14(error_callback);

    if (!FUNC11())
        FUNC0(EXIT_FAILURE);

    FUNC18(GLFW_RESIZABLE, GL_FALSE);
    FUNC18(GLFW_CONTEXT_VERSION_MAJOR, 3);
    FUNC18(GLFW_CONTEXT_VERSION_MINOR, 2);
    FUNC18(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    FUNC18(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    window = FUNC9(800, 600, "GLFW OpenGL3 Heightmap demo", NULL, NULL);
    if (! window )
    {
        FUNC17();
        FUNC0(EXIT_FAILURE);
    }

    /* Register events callback */
    FUNC15(window, key_callback);

    FUNC12(window);
    FUNC8((GLADloadproc) glfwGetProcAddress);

    /* Prepare opengl resources for rendering */
    shader_program = FUNC22(vertex_shader_text, fragment_shader_text);

    if (shader_program == 0u)
    {
        FUNC17();
        FUNC0(EXIT_FAILURE);
    }

    FUNC6(shader_program);
    uloc_project   = FUNC4(shader_program, "project");
    uloc_modelview = FUNC4(shader_program, "modelview");

    /* Compute the projection matrix */
    f = 1.0f / FUNC23(view_angle / 2.0f);
    projection_matrix[0]  = f / aspect_ratio;
    projection_matrix[5]  = f;
    projection_matrix[10] = (z_far + z_near)/ (z_near - z_far);
    projection_matrix[11] = -1.0f;
    projection_matrix[14] = 2.0f * (z_far * z_near) / (z_near - z_far);
    FUNC5(uloc_project, 1, GL_FALSE, projection_matrix);

    /* Set the camera position */
    modelview_matrix[12]  = -5.0f;
    modelview_matrix[13]  = -5.0f;
    modelview_matrix[14]  = -20.0f;
    FUNC5(uloc_modelview, 1, GL_FALSE, modelview_matrix);

    /* Create mesh data */
    FUNC20();
    FUNC21(shader_program);

    /* Create vao + vbo to store the mesh */
    /* Create the vbo to store all the information for the grid and the height */

    /* setup the scene ready for rendering */
    FUNC7(0, 0, 800, 600);
    FUNC2(0.0f, 0.0f, 0.0f, 0.0f);

    /* main loop */
    frame = 0;
    iter = 0;
    last_update_time = FUNC10();

    while (!FUNC19(window))
    {
        ++frame;
        /* render the next frame */
        FUNC1(GL_COLOR_BUFFER_BIT);
        FUNC3(GL_LINES, 2* MAP_NUM_LINES , GL_UNSIGNED_INT, 0);

        /* display and process events through callbacks */
        FUNC16(window);
        FUNC13();
        /* Check the frame rate and update the heightmap if needed */
        dt = FUNC10();
        if ((dt - last_update_time) > 0.2)
        {
            /* generate the next iteration of the heightmap */
            if (iter < MAX_ITER)
            {
                FUNC24(NUM_ITER_AT_A_TIME);
                FUNC25();
                iter += NUM_ITER_AT_A_TIME;
            }
            last_update_time = dt;
            frame = 0;
        }
    }

    FUNC17();
    FUNC0(EXIT_SUCCESS);
}