
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int GLuint ;
typedef int GLint ;
typedef int GLFWwindow ;
typedef int GLADloadproc ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_CONTEXT_VERSION_MAJOR ;
 int GLFW_CONTEXT_VERSION_MINOR ;
 int GLFW_OPENGL_CORE_PROFILE ;
 int GLFW_OPENGL_FORWARD_COMPAT ;
 int GLFW_OPENGL_PROFILE ;
 int GLFW_RESIZABLE ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_FALSE ;
 int GL_LINES ;
 int GL_TRUE ;
 int GL_UNSIGNED_INT ;
 int MAP_NUM_LINES ;
 int MAX_ITER ;
 scalar_t__ NUM_ITER_AT_A_TIME ;
 float aspect_ratio ;
 int error_callback ;
 int exit (int ) ;
 int fragment_shader_text ;
 int glClear (int ) ;
 int glClearColor (float,float,float,float) ;
 int glDrawElements (int ,int,int ,int ) ;
 int glGetUniformLocation (unsigned int,char*) ;
 int glUniformMatrix4fv (int ,int,int,float*) ;
 int glUseProgram (unsigned int) ;
 int glViewport (int ,int ,int,int) ;
 int gladLoadGLLoader (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 scalar_t__ glfwGetProcAddress ;
 double glfwGetTime () ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int) ;
 int glfwWindowShouldClose (int *) ;
 int init_map () ;
 int key_callback ;
 int make_mesh (unsigned int) ;
 unsigned int make_shader_program (int ,int ) ;
 float* modelview_matrix ;
 float* projection_matrix ;
 float tanf (float) ;
 int update_map (scalar_t__) ;
 int update_mesh () ;
 int vertex_shader_text ;
 float view_angle ;
 float z_far ;
 float z_near ;

int main(int argc, char** argv)
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

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    window = glfwCreateWindow(800, 600, "GLFW OpenGL3 Heightmap demo", ((void*)0), ((void*)0));
    if (! window )
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }


    glfwSetKeyCallback(window, key_callback);

    glfwMakeContextCurrent(window);
    gladLoadGLLoader((GLADloadproc) glfwGetProcAddress);


    shader_program = make_shader_program(vertex_shader_text, fragment_shader_text);

    if (shader_program == 0u)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glUseProgram(shader_program);
    uloc_project = glGetUniformLocation(shader_program, "project");
    uloc_modelview = glGetUniformLocation(shader_program, "modelview");


    f = 1.0f / tanf(view_angle / 2.0f);
    projection_matrix[0] = f / aspect_ratio;
    projection_matrix[5] = f;
    projection_matrix[10] = (z_far + z_near)/ (z_near - z_far);
    projection_matrix[11] = -1.0f;
    projection_matrix[14] = 2.0f * (z_far * z_near) / (z_near - z_far);
    glUniformMatrix4fv(uloc_project, 1, GL_FALSE, projection_matrix);


    modelview_matrix[12] = -5.0f;
    modelview_matrix[13] = -5.0f;
    modelview_matrix[14] = -20.0f;
    glUniformMatrix4fv(uloc_modelview, 1, GL_FALSE, modelview_matrix);


    init_map();
    make_mesh(shader_program);





    glViewport(0, 0, 800, 600);
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);


    frame = 0;
    iter = 0;
    last_update_time = glfwGetTime();

    while (!glfwWindowShouldClose(window))
    {
        ++frame;

        glClear(GL_COLOR_BUFFER_BIT);
        glDrawElements(GL_LINES, 2* MAP_NUM_LINES , GL_UNSIGNED_INT, 0);


        glfwSwapBuffers(window);
        glfwPollEvents();

        dt = glfwGetTime();
        if ((dt - last_update_time) > 0.2)
        {

            if (iter < MAX_ITER)
            {
                update_map(NUM_ITER_AT_A_TIME);
                update_mesh();
                iter += NUM_ITER_AT_A_TIME;
            }
            last_update_time = dt;
            frame = 0;
        }
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
