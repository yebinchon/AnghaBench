
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ _GLFWcursor ;
struct TYPE_6__ {TYPE_1__* cursorListHead; } ;
typedef int GLFWcursor ;


 int GLFW_ARROW_CURSOR ;
 int GLFW_CROSSHAIR_CURSOR ;
 int GLFW_HAND_CURSOR ;
 int GLFW_HRESIZE_CURSOR ;
 int GLFW_IBEAM_CURSOR ;
 int GLFW_INVALID_ENUM ;
 int GLFW_VRESIZE_CURSOR ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_4__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfwPlatformCreateStandardCursor (TYPE_1__*,int) ;
 TYPE_1__* calloc (int,int) ;
 int glfwDestroyCursor (int *) ;

GLFWcursor* glfwCreateStandardCursor(int shape)
{
    _GLFWcursor* cursor;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (shape != GLFW_ARROW_CURSOR &&
        shape != GLFW_IBEAM_CURSOR &&
        shape != GLFW_CROSSHAIR_CURSOR &&
        shape != GLFW_HAND_CURSOR &&
        shape != GLFW_HRESIZE_CURSOR &&
        shape != GLFW_VRESIZE_CURSOR)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid standard cursor");
        return ((void*)0);
    }

    cursor = calloc(1, sizeof(_GLFWcursor));
    cursor->next = _glfw.cursorListHead;
    _glfw.cursorListHead = cursor;

    if (!_glfwPlatformCreateStandardCursor(cursor, shape))
    {
        glfwDestroyCursor((GLFWcursor*) cursor);
        return ((void*)0);
    }

    return (GLFWcursor*) cursor;
}
