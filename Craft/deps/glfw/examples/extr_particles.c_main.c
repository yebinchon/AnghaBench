
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int thrd_t ;
struct TYPE_5__ {double t; float dt; int d_done; int p_done; int particles_lock; scalar_t__ d_frame; scalar_t__ p_frame; } ;
struct TYPE_4__ {int width; int height; int refreshRate; int blueBits; int greenBits; int redBits; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int F_TEX_HEIGHT ;
 int F_TEX_WIDTH ;
 int GLFW_BLUE_BITS ;
 int GLFW_CURSOR ;
 int GLFW_CURSOR_DISABLED ;
 int GLFW_GREEN_BITS ;
 int GLFW_RED_BITS ;
 int GLFW_REFRESH_RATE ;
 int GL_CLAMP ;
 int GL_FILL ;
 int GL_FRONT_AND_BACK ;
 int GL_LIGHT_MODEL_COLOR_CONTROL_EXT ;
 int GL_LINEAR ;
 int GL_LUMINANCE ;
 int GL_REPEAT ;
 int GL_SEPARATE_SPECULAR_COLOR_EXT ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNSIGNED_BYTE ;
 int P_TEX_HEIGHT ;
 int P_TEX_WIDTH ;
 int cnd_init (int *) ;
 int draw_scene (int *,int ) ;
 int exit (int ) ;
 int floor_tex_id ;
 int floor_texture ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int glLightModeli (int ,int ) ;
 int glPixelStorei (int ,int) ;
 int glPolygonMode (int ,int ) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int glTexParameteri (int ,int ,int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwDestroyWindow (int *) ;
 scalar_t__ glfwExtensionSupported (char*) ;
 int glfwGetFramebufferSize (int *,int*,int*) ;
 int * glfwGetPrimaryMonitor () ;
 int glfwGetTime () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetFramebufferSizeCallback (int *,int (*) (int *,int,int)) ;
 int glfwSetInputMode (int *,int ,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetTime (double) ;
 int glfwSwapBuffers (int *) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int ) ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 int mtx_init (int *,int ) ;
 int mtx_timed ;
 int particle_tex_id ;
 int particle_texture ;
 int physics_thread_main ;
 int resize_callback (int *,int,int) ;
 int stderr ;
 scalar_t__ thrd_create (int *,int ,int *) ;
 int thrd_join (int ,int *) ;
 scalar_t__ thrd_success ;
 TYPE_2__ thread_sync ;
 int usage () ;
 scalar_t__ wireframe ;

int main(int argc, char** argv)
{
    int ch, width, height;
    thrd_t physics_thread = 0;
    GLFWwindow* window;
    GLFWmonitor* monitor = ((void*)0);

    if (!glfwInit())
    {
        fprintf(stderr, "Failed to initialize GLFW\n");
        exit(EXIT_FAILURE);
    }

    while ((ch = getopt(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'f':
                monitor = glfwGetPrimaryMonitor();
                break;
            case 'h':
                usage();
                exit(EXIT_SUCCESS);
        }
    }

    if (monitor)
    {
        const GLFWvidmode* mode = glfwGetVideoMode(monitor);

        glfwWindowHint(GLFW_RED_BITS, mode->redBits);
        glfwWindowHint(GLFW_GREEN_BITS, mode->greenBits);
        glfwWindowHint(GLFW_BLUE_BITS, mode->blueBits);
        glfwWindowHint(GLFW_REFRESH_RATE, mode->refreshRate);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    window = glfwCreateWindow(width, height, "Particle Engine", monitor, ((void*)0));
    if (!window)
    {
        fprintf(stderr, "Failed to create GLFW window\n");
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    if (monitor)
        glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    glfwSetFramebufferSizeCallback(window, resize_callback);
    glfwSetKeyCallback(window, key_callback);


    glfwGetFramebufferSize(window, &width, &height);
    resize_callback(window, width, height);


    glGenTextures(1, &particle_tex_id);
    glBindTexture(GL_TEXTURE_2D, particle_tex_id);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_LUMINANCE, P_TEX_WIDTH, P_TEX_HEIGHT,
                 0, GL_LUMINANCE, GL_UNSIGNED_BYTE, particle_texture);


    glGenTextures(1, &floor_tex_id);
    glBindTexture(GL_TEXTURE_2D, floor_tex_id);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_LUMINANCE, F_TEX_WIDTH, F_TEX_HEIGHT,
                 0, GL_LUMINANCE, GL_UNSIGNED_BYTE, floor_texture);

    if (glfwExtensionSupported("GL_EXT_separate_specular_color"))
    {
        glLightModeli(GL_LIGHT_MODEL_COLOR_CONTROL_EXT,
                      GL_SEPARATE_SPECULAR_COLOR_EXT);
    }


    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    wireframe = 0;


    thread_sync.t = 0.0;
    thread_sync.dt = 0.001f;
    thread_sync.p_frame = 0;
    thread_sync.d_frame = 0;

    mtx_init(&thread_sync.particles_lock, mtx_timed);
    cnd_init(&thread_sync.p_done);
    cnd_init(&thread_sync.d_done);

    if (thrd_create(&physics_thread, physics_thread_main, window) != thrd_success)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwSetTime(0.0);

    while (!glfwWindowShouldClose(window))
    {
        draw_scene(window, glfwGetTime());

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    thrd_join(physics_thread, ((void*)0));

    glfwDestroyWindow(window);
    glfwTerminate();

    exit(EXIT_SUCCESS);
}
