
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GLFW_CURSOR ;
 scalar_t__ GLFW_CURSOR_DISABLED ;
 int GLFW_MOD_CONTROL ;
 int GLFW_MOD_SUPER ;
 int GLFW_MOUSE_BUTTON_LEFT ;
 int GLFW_MOUSE_BUTTON_MIDDLE ;
 int GLFW_MOUSE_BUTTON_RIGHT ;
 int GLFW_PRESS ;
 scalar_t__ glfwGetInputMode (int *,int ) ;
 int glfwSetInputMode (int *,int ,scalar_t__) ;
 int on_left_click () ;
 int on_light () ;
 int on_middle_click () ;
 int on_right_click () ;

void on_mouse_button(GLFWwindow *window, int button, int action, int mods) {
    int control = mods & (GLFW_MOD_CONTROL | GLFW_MOD_SUPER);
    int exclusive =
        glfwGetInputMode(window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED;
    if (action != GLFW_PRESS) {
        return;
    }
    if (button == GLFW_MOUSE_BUTTON_LEFT) {
        if (exclusive) {
            if (control) {
                on_right_click();
            }
            else {
                on_left_click();
            }
        }
        else {
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
        }
    }
    if (button == GLFW_MOUSE_BUTTON_RIGHT) {
        if (exclusive) {
            if (control) {
                on_light();
            }
            else {
                on_right_click();
            }
        }
    }
    if (button == GLFW_MOUSE_BUTTON_MIDDLE) {
        if (exclusive) {
            on_middle_click();
        }
    }
}
