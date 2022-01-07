
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buttons; } ;
typedef TYPE_1__ usercmd_t ;
struct TYPE_7__ {scalar_t__ keyCatchers; } ;
struct TYPE_6__ {scalar_t__ wasPressed; scalar_t__ active; } ;


 int BUTTON_ANY ;
 int BUTTON_TALK ;
 scalar_t__ anykeydown ;
 TYPE_3__ cls ;
 TYPE_2__* in_buttons ;
 scalar_t__ qfalse ;

void CL_CmdButtons( usercmd_t *cmd ) {
 int i;






 for (i = 0 ; i < 15 ; i++) {
  if ( in_buttons[i].active || in_buttons[i].wasPressed ) {
   cmd->buttons |= 1 << i;
  }
  in_buttons[i].wasPressed = qfalse;
 }

 if ( cls.keyCatchers ) {
  cmd->buttons |= BUTTON_TALK;
 }



 if ( anykeydown && !cls.keyCatchers ) {
  cmd->buttons |= BUTTON_ANY;
 }
}
