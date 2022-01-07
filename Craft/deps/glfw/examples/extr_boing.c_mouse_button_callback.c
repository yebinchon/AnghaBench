
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GLFW_MOUSE_BUTTON_LEFT ;
 int GLFW_PRESS ;
 int GL_FALSE ;
 int GL_TRUE ;
 int cursor_x ;
 int cursor_y ;
 int override_pos ;
 int set_ball_pos (int ,int ) ;

void mouse_button_callback( GLFWwindow* window, int button, int action, int mods )
{
   if (button != GLFW_MOUSE_BUTTON_LEFT)
      return;

   if (action == GLFW_PRESS)
   {
      override_pos = GL_TRUE;
      set_ball_pos(cursor_x, cursor_y);
   }
   else
   {
      override_pos = GL_FALSE;
   }
}
