
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; } ;
typedef TYPE_1__ Slot ;
typedef int GLFWwindow ;


 int counter ;
 char* get_character_string (unsigned int) ;
 char* get_mods_name (int) ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetWindowUserPointer (int *) ;
 int printf (char*,int ,int,double,unsigned int,char*,char*) ;

__attribute__((used)) static void char_mods_callback(GLFWwindow* window, unsigned int codepoint, int mods)
{
    Slot* slot = glfwGetWindowUserPointer(window);
    printf("%08x to %i at %0.3f: Character 0x%08x (%s) with modifiers (with%s) input\n",
            counter++, slot->number, glfwGetTime(), codepoint,
            get_character_string(codepoint),
            get_mods_name(mods));
}
