
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EA_ResetInput; int EA_EndRegular; int EA_GetInput; int EA_View; int EA_Move; int EA_DelayedJump; int EA_Jump; int EA_SelectWeapon; int EA_MoveRight; int EA_MoveLeft; int EA_MoveBack; int EA_MoveForward; int EA_MoveDown; int EA_MoveUp; int EA_Crouch; int EA_Respawn; int EA_Use; int EA_Attack; int EA_Talk; int EA_Gesture; int EA_Action; int EA_SayTeam; int EA_Say; int EA_Command; } ;
typedef TYPE_1__ ea_export_t ;


 int EA_Action ;
 int EA_Attack ;
 int EA_Command ;
 int EA_Crouch ;
 int EA_DelayedJump ;
 int EA_EndRegular ;
 int EA_Gesture ;
 int EA_GetInput ;
 int EA_Jump ;
 int EA_Move ;
 int EA_MoveBack ;
 int EA_MoveDown ;
 int EA_MoveForward ;
 int EA_MoveLeft ;
 int EA_MoveRight ;
 int EA_MoveUp ;
 int EA_ResetInput ;
 int EA_Respawn ;
 int EA_Say ;
 int EA_SayTeam ;
 int EA_SelectWeapon ;
 int EA_Talk ;
 int EA_Use ;
 int EA_View ;

__attribute__((used)) static void Init_EA_Export( ea_export_t *ea ) {

 ea->EA_Command = EA_Command;
 ea->EA_Say = EA_Say;
 ea->EA_SayTeam = EA_SayTeam;

 ea->EA_Action = EA_Action;
 ea->EA_Gesture = EA_Gesture;
 ea->EA_Talk = EA_Talk;
 ea->EA_Attack = EA_Attack;
 ea->EA_Use = EA_Use;
 ea->EA_Respawn = EA_Respawn;
 ea->EA_Crouch = EA_Crouch;
 ea->EA_MoveUp = EA_MoveUp;
 ea->EA_MoveDown = EA_MoveDown;
 ea->EA_MoveForward = EA_MoveForward;
 ea->EA_MoveBack = EA_MoveBack;
 ea->EA_MoveLeft = EA_MoveLeft;
 ea->EA_MoveRight = EA_MoveRight;

 ea->EA_SelectWeapon = EA_SelectWeapon;
 ea->EA_Jump = EA_Jump;
 ea->EA_DelayedJump = EA_DelayedJump;
 ea->EA_Move = EA_Move;
 ea->EA_View = EA_View;
 ea->EA_GetInput = EA_GetInput;
 ea->EA_EndRegular = EA_EndRegular;
 ea->EA_ResetInput = EA_ResetInput;
}
