#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ (* GetString ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int GLFW_OPENGL_API ; 
 int GLFW_OPENGL_ES_API ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*,int*,int*) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GLboolean FUNC6(int* api, int* major, int* minor, int* rev)
{
    int i;
    _GLFWwindow* window;
    const char* version;
    const char* prefixes[] =
    {
        "OpenGL ES-CM ",
        "OpenGL ES-CL ",
        "OpenGL ES ",
        NULL
    };

    *api = GLFW_OPENGL_API;

    window = FUNC1();

    version = (const char*) window->GetString(GL_VERSION);
    if (!version)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Failed to retrieve context version string");
        return GL_FALSE;
    }

    for (i = 0;  prefixes[i];  i++)
    {
        const size_t length = FUNC3(prefixes[i]);

        if (FUNC4(version, prefixes[i], length) == 0)
        {
            version += length;
            *api = GLFW_OPENGL_ES_API;
            break;
        }
    }

    if (!FUNC2(version, "%d.%d.%d", major, minor, rev))
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "No version found in context version string");
        return GL_FALSE;
    }

    return GL_TRUE;
}