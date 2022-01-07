
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int window; } ;
struct TYPE_4__ {int width; int height; } ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 scalar_t__ FULLSCREEN ;
 int WINDOW_HEIGHT ;
 int WINDOW_WIDTH ;
 TYPE_3__* g ;
 int glfwCreateWindow (int,int,char*,int *,int *) ;
 int * glfwGetPrimaryMonitor () ;
 TYPE_1__* glfwGetVideoModes (int *,int*) ;

void create_window() {
    int window_width = WINDOW_WIDTH;
    int window_height = WINDOW_HEIGHT;
    GLFWmonitor *monitor = ((void*)0);
    if (FULLSCREEN) {
        int mode_count;
        monitor = glfwGetPrimaryMonitor();
        const GLFWvidmode *modes = glfwGetVideoModes(monitor, &mode_count);
        window_width = modes[mode_count - 1].width;
        window_height = modes[mode_count - 1].height;
    }
    g->window = glfwCreateWindow(
        window_width, window_height, "Craft", monitor, ((void*)0));
}
