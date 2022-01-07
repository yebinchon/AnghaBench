
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * angles; int serverTime; int weapon; } ;
typedef TYPE_1__ usercmd_t ;
struct TYPE_5__ {int * viewangles; int serverTime; int cgameUserCmdValue; } ;


 int ANGLE2SHORT (int ) ;
 TYPE_2__ cl ;

void CL_FinishMove( usercmd_t *cmd ) {
 int i;


 cmd->weapon = cl.cgameUserCmdValue;



 cmd->serverTime = cl.serverTime;

 for (i=0 ; i<3 ; i++) {
  cmd->angles[i] = ANGLE2SHORT(cl.viewangles[i]);
 }
}
