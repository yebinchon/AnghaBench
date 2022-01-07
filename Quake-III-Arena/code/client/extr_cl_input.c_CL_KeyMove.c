
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* upmove; void* rightmove; void* forwardmove; int buttons; } ;
typedef TYPE_1__ usercmd_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int active; } ;
struct TYPE_7__ {scalar_t__ active; } ;


 int BUTTON_WALKING ;
 int CL_KeyState (int *) ;
 void* ClampChar (int) ;
 TYPE_4__* cl_run ;
 int in_back ;
 int in_down ;
 int in_forward ;
 int in_left ;
 int in_moveleft ;
 int in_moveright ;
 int in_right ;
 TYPE_3__ in_speed ;
 TYPE_2__ in_strafe ;
 int in_up ;

void CL_KeyMove( usercmd_t *cmd ) {
 int movespeed;
 int forward, side, up;






 if ( in_speed.active ^ cl_run->integer ) {
  movespeed = 127;
  cmd->buttons &= ~BUTTON_WALKING;
 } else {
  cmd->buttons |= BUTTON_WALKING;
  movespeed = 64;
 }

 forward = 0;
 side = 0;
 up = 0;
 if ( in_strafe.active ) {
  side += movespeed * CL_KeyState (&in_right);
  side -= movespeed * CL_KeyState (&in_left);
 }

 side += movespeed * CL_KeyState (&in_moveright);
 side -= movespeed * CL_KeyState (&in_moveleft);


 up += movespeed * CL_KeyState (&in_up);
 up -= movespeed * CL_KeyState (&in_down);

 forward += movespeed * CL_KeyState (&in_forward);
 forward -= movespeed * CL_KeyState (&in_back);

 cmd->forwardmove = ClampChar( forward );
 cmd->rightmove = ClampChar( side );
 cmd->upmove = ClampChar( up );
}
