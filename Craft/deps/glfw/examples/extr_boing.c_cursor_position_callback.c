
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 float cursor_x ;
 float cursor_y ;
 scalar_t__ override_pos ;
 int set_ball_pos (float,float) ;

void cursor_position_callback( GLFWwindow* window, double x, double y )
{
   cursor_x = (float) x;
   cursor_y = (float) y;

   if ( override_pos )
      set_ball_pos(cursor_x, cursor_y);
}
