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
 int GLFW_MOD_ALT ; 
 int GLFW_MOD_CONTROL ; 
 int GLFW_MOD_SHIFT ; 
 int GLFW_MOD_SUPER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static const char* FUNC1(int mods)
{
    static char name[512];

    if (mods == 0)
        return " no mods";

    name[0] = '\0';

    if (mods & GLFW_MOD_SHIFT)
        FUNC0(name, " shift");
    if (mods & GLFW_MOD_CONTROL)
        FUNC0(name, " control");
    if (mods & GLFW_MOD_ALT)
        FUNC0(name, " alt");
    if (mods & GLFW_MOD_SUPER)
        FUNC0(name, " super");

    return name;
}