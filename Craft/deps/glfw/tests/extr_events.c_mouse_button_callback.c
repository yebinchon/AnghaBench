
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; } ;
typedef TYPE_1__ Slot ;
typedef int GLFWwindow ;


 int counter ;
 char* get_action_name (int) ;
 char* get_button_name (int) ;
 char* get_mods_name (int) ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetWindowUserPointer (int *) ;
 int printf (char*,int ,int,double,int,char*,char*,char*) ;

__attribute__((used)) static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
    Slot* slot = glfwGetWindowUserPointer(window);
    printf("%08x to %i at %0.3f: Mouse button %i (%s) (with%s) was %s\n",
           counter++, slot->number, glfwGetTime(), button,
           get_button_name(button),
           get_mods_name(mods),
           get_action_name(action));
}
