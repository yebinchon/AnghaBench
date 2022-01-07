
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;





 int GLFW_PRESS ;
 int GL_TRUE ;
 int MODIFIER ;
 char* glfwGetClipboardString (int *) ;
 int glfwSetClipboardString (int *,char const*) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 129:
            glfwSetWindowShouldClose(window, GL_TRUE);
            break;

        case 128:
            if (mods == MODIFIER)
            {
                const char* string;

                string = glfwGetClipboardString(window);
                if (string)
                    printf("Clipboard contains \"%s\"\n", string);
                else
                    printf("Clipboard does not contain a string\n");
            }
            break;

        case 130:
            if (mods == MODIFIER)
            {
                const char* string = "Hello GLFW World!";
                glfwSetClipboardString(window, string);
                printf("Setting clipboard to \"%s\"\n", string);
            }
            break;
    }
}
