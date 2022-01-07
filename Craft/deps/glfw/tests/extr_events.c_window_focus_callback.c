
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; } ;
typedef TYPE_1__ Slot ;
typedef int GLFWwindow ;


 int counter ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetWindowUserPointer (int *) ;
 int printf (char*,int ,int,double,char*) ;

__attribute__((used)) static void window_focus_callback(GLFWwindow* window, int focused)
{
    Slot* slot = glfwGetWindowUserPointer(window);
    printf("%08x to %i at %0.3f: Window %s\n",
           counter++, slot->number, glfwGetTime(),
           focused ? "focused" : "defocused");
}
