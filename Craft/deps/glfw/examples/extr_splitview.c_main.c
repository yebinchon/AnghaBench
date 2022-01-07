
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_CONTEXT_VERSION_MAJOR ;
 int GLFW_CONTEXT_VERSION_MINOR ;
 int GLFW_SAMPLES ;
 int GL_MULTISAMPLE_ARB ;
 int cursorPosFun ;
 scalar_t__ do_redraw ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int framebufferSizeFun (int *,int ,int ) ;
 int glEnable (int ) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 scalar_t__ glfwExtensionSupported (char*) ;
 int glfwGetFramebufferSize (int *,int *,int *) ;
 int glfwGetWindowAttrib (int *,int ) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetCursorPosCallback (int *,int ) ;
 int glfwSetFramebufferSizeCallback (int *,int (*) (int *,int ,int )) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetMouseButtonCallback (int *,int ) ;
 int glfwSetWindowRefreshCallback (int *,int (*) (int *)) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 int glfwWindowHint (int ,int) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int height ;
 int key_callback ;
 int mouseButtonFun ;
 int stderr ;
 int width ;
 int windowRefreshFun (int *) ;

int main(void)
{
    GLFWwindow* window;


    if (!glfwInit())
    {
        fprintf(stderr, "Failed to initialize GLFW\n");
        exit(EXIT_FAILURE);
    }

    glfwWindowHint(GLFW_SAMPLES, 4);


    window = glfwCreateWindow(500, 500, "Split view demo", ((void*)0), ((void*)0));
    if (!window)
    {
        fprintf(stderr, "Failed to open GLFW window\n");

        glfwTerminate();
        exit(EXIT_FAILURE);
    }


    glfwSetFramebufferSizeCallback(window, framebufferSizeFun);
    glfwSetWindowRefreshCallback(window, windowRefreshFun);
    glfwSetCursorPosCallback(window, cursorPosFun);
    glfwSetMouseButtonCallback(window, mouseButtonFun);
    glfwSetKeyCallback(window, key_callback);


    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    if (glfwExtensionSupported("GL_ARB_multisample") ||
        glfwGetWindowAttrib(window, GLFW_CONTEXT_VERSION_MAJOR) >= 2 ||
        glfwGetWindowAttrib(window, GLFW_CONTEXT_VERSION_MINOR) >= 3)
    {
        glEnable(GL_MULTISAMPLE_ARB);
    }

    glfwGetFramebufferSize(window, &width, &height);
    framebufferSizeFun(window, width, height);


    for (;;)
    {

        if (do_redraw)
            windowRefreshFun(window);


        glfwWaitEvents();


        if (glfwWindowShouldClose(window))
            break;
    }


    glfwTerminate();

    exit(EXIT_SUCCESS);
}
