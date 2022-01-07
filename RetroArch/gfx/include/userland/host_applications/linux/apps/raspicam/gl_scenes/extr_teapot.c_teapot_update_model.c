
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ scene_state; } ;
struct TYPE_4__ {void* rot_angle_z; void* rot_angle_y; void* rot_angle_x; int distance; int distance_inc; int rot_angle_z_inc; int rot_angle_y_inc; int rot_angle_x_inc; } ;
typedef TYPE_1__ TEAPOT_STATE_T ;
typedef TYPE_2__ RASPITEX_STATE ;


 int glLoadIdentity () ;
 int glRotatef (void*,float,float,float) ;
 int glTranslatef (float,float,int ) ;
 int inc_and_clip_distance (int ,int ) ;
 void* inc_and_wrap_angle (void*,int ) ;

__attribute__((used)) static int teapot_update_model(RASPITEX_STATE *raspitex_state)
{
   TEAPOT_STATE_T *state = (TEAPOT_STATE_T *) raspitex_state->scene_state;


   state->rot_angle_x = inc_and_wrap_angle(state->rot_angle_x, state->rot_angle_x_inc);
   state->rot_angle_y = inc_and_wrap_angle(state->rot_angle_y, state->rot_angle_y_inc);
   state->rot_angle_z = inc_and_wrap_angle(state->rot_angle_z, state->rot_angle_z_inc);
   state->distance = inc_and_clip_distance(state->distance, state->distance_inc);

   glLoadIdentity();

   glTranslatef(0.f, 0.f, -state->distance);


   glRotatef(state->rot_angle_x, 1.f, 0.f, 0.f);
   glRotatef(state->rot_angle_y, 0.f, 1.f, 0.f);
   glRotatef(state->rot_angle_z, 0.f, 0.f, 1.f);

   return 0;
}
