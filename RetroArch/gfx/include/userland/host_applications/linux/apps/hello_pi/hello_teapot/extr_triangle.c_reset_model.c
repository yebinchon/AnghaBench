
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float rot_angle_x; float rot_angle_y; float rot_angle_z; float rot_angle_x_inc; float rot_angle_y_inc; float rot_angle_z_inc; float distance; } ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_MODELVIEW ;
 int glMatrixMode (int ) ;

__attribute__((used)) static void reset_model(CUBE_STATE_T *state)
{

   glMatrixMode(GL_MODELVIEW);


   state->rot_angle_x = 45.f; state->rot_angle_y = 30.f; state->rot_angle_z = 0.f;
   state->rot_angle_x_inc = 0.5f; state->rot_angle_y_inc = 0.5f; state->rot_angle_z_inc = 0.f;
   state->distance = 1.2f*1.5f;
}
