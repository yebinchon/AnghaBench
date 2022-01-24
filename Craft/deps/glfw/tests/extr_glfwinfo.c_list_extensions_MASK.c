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
typedef  scalar_t__ (* PFNGLGETSTRINGIPROC ) (int /*<<< orphan*/ ,int) ;
typedef  char GLubyte ;
typedef  int GLint ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int GLFW_OPENGL_API ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_NUM_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(int api, int major, int minor)
{
    int i;
    GLint count;
    const GLubyte* extensions;

    FUNC6("%s context supported extensions:\n", FUNC1(api));

    if (api == GLFW_OPENGL_API && major > 2)
    {
        PFNGLGETSTRINGIPROC glGetStringi =
            (PFNGLGETSTRINGIPROC) FUNC4("glGetStringi");
        if (!glGetStringi)
        {
            FUNC5();
            FUNC0(EXIT_FAILURE);
        }

        FUNC2(GL_NUM_EXTENSIONS, &count);

        for (i = 0;  i < count;  i++)
            FUNC8((const char*) glGetStringi(GL_EXTENSIONS, i));
    }
    else
    {
        extensions = FUNC3(GL_EXTENSIONS);
        while (*extensions != '\0')
        {
            if (*extensions == ' ')
                FUNC7('\n');
            else
                FUNC7(*extensions);

            extensions++;
        }
    }

    FUNC7('\n');
}