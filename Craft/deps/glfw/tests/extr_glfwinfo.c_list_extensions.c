
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* PFNGLGETSTRINGIPROC ) (int ,int) ;
typedef char GLubyte ;
typedef int GLint ;


 int EXIT_FAILURE ;
 int GLFW_OPENGL_API ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int exit (int ) ;
 char* get_api_name (int) ;
 int glGetIntegerv (int ,int*) ;
 char* glGetString (int ) ;
 int glfwGetProcAddress (char*) ;
 int glfwTerminate () ;
 int printf (char*,char*) ;
 int putchar (char const) ;
 int puts (char const*) ;

__attribute__((used)) static void list_extensions(int api, int major, int minor)
{
    int i;
    GLint count;
    const GLubyte* extensions;

    printf("%s context supported extensions:\n", get_api_name(api));

    if (api == GLFW_OPENGL_API && major > 2)
    {
        PFNGLGETSTRINGIPROC glGetStringi =
            (PFNGLGETSTRINGIPROC) glfwGetProcAddress("glGetStringi");
        if (!glGetStringi)
        {
            glfwTerminate();
            exit(EXIT_FAILURE);
        }

        glGetIntegerv(GL_NUM_EXTENSIONS, &count);

        for (i = 0; i < count; i++)
            puts((const char*) glGetStringi(GL_EXTENSIONS, i));
    }
    else
    {
        extensions = glGetString(GL_EXTENSIONS);
        while (*extensions != '\0')
        {
            if (*extensions == ' ')
                putchar('\n');
            else
                putchar(*extensions);

            extensions++;
        }
    }

    putchar('\n');
}
