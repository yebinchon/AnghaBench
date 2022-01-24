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

/* Variables and functions */
 int GLFW_VERSION_MAJOR ; 
 int GLFW_VERSION_MINOR ; 
 int GLFW_VERSION_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    int major, minor, revision;
    FUNC0(&major, &minor, &revision);

    FUNC2("GLFW header version: %u.%u.%u\n",
           GLFW_VERSION_MAJOR,
           GLFW_VERSION_MINOR,
           GLFW_VERSION_REVISION);
    FUNC2("GLFW library version: %u.%u.%u\n", major, minor, revision);
    FUNC2("GLFW library version string: \"%s\"\n", FUNC1());
}