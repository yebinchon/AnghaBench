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
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int GLFW_VERSION_MAJOR ; 
 int GLFW_VERSION_MINOR ; 
 int GLFW_VERSION_REVISION ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static GLboolean FUNC2(void)
{
    int major, minor, revision;
    FUNC0(&major, &minor, &revision);

    if (major != GLFW_VERSION_MAJOR)
    {
        FUNC1("*** ERROR: GLFW major version mismatch! ***\n");
        return GL_FALSE;
    }

    if (minor != GLFW_VERSION_MINOR || revision != GLFW_VERSION_REVISION)
        FUNC1("*** WARNING: GLFW version mismatch! ***\n");

    return GL_TRUE;
}