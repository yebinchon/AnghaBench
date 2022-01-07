
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usercmd_t ;
struct TYPE_4__ {int cmdNumber; int * cmds; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_PRIMED ;
 int CL_CreateCmd () ;
 int CMD_MASK ;
 TYPE_2__ cl ;
 TYPE_1__ cls ;
 int com_frameTime ;
 int frame_msec ;
 int old_com_frameTime ;

void CL_CreateNewCommands( void ) {
 usercmd_t *cmd;
 int cmdNum;


 if ( cls.state < CA_PRIMED ) {
  return;
 }

 frame_msec = com_frameTime - old_com_frameTime;



 if ( frame_msec > 200 ) {
  frame_msec = 200;
 }
 old_com_frameTime = com_frameTime;



 cl.cmdNumber++;
 cmdNum = cl.cmdNumber & CMD_MASK;
 cl.cmds[cmdNum] = CL_CreateCmd ();
 cmd = &cl.cmds[cmdNum];
}
