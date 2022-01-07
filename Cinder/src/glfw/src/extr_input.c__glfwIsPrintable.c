
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWbool ;


 int GLFW_KEY_APOSTROPHE ;
 int GLFW_KEY_KP_0 ;
 int GLFW_KEY_KP_ADD ;
 int GLFW_KEY_KP_EQUAL ;
 int GLFW_KEY_WORLD_2 ;

GLFWbool _glfwIsPrintable(int key)
{
    return (key >= GLFW_KEY_APOSTROPHE && key <= GLFW_KEY_WORLD_2) ||
           (key >= GLFW_KEY_KP_0 && key <= GLFW_KEY_KP_ADD) ||
           key == GLFW_KEY_KP_EQUAL;
}
