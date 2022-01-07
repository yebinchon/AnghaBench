
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int usercmd_t ;
typedef int cmd ;
struct TYPE_4__ {int* viewangles; } ;
struct TYPE_3__ {int integer; } ;


 int CL_AdjustAngles () ;
 int CL_CmdButtons (int *) ;
 int CL_FinishMove (int *) ;
 int CL_JoystickMove (int *) ;
 int CL_KeyMove (int *) ;
 int CL_MouseMove (int *) ;
 int Com_Memset (int *,int ,int) ;
 size_t PITCH ;
 int SCR_DebugGraph (int ,int ) ;
 int VectorCopy (int*,int*) ;
 size_t YAW ;
 int abs (int) ;
 TYPE_2__ cl ;
 TYPE_1__* cl_debugMove ;

usercmd_t CL_CreateCmd( void ) {
 usercmd_t cmd;
 vec3_t oldAngles;

 VectorCopy( cl.viewangles, oldAngles );


 CL_AdjustAngles ();

 Com_Memset( &cmd, 0, sizeof( cmd ) );

 CL_CmdButtons( &cmd );


 CL_KeyMove( &cmd );


 CL_MouseMove( &cmd );


 CL_JoystickMove( &cmd );


 if ( cl.viewangles[PITCH] - oldAngles[PITCH] > 90 ) {
  cl.viewangles[PITCH] = oldAngles[PITCH] + 90;
 } else if ( oldAngles[PITCH] - cl.viewangles[PITCH] > 90 ) {
  cl.viewangles[PITCH] = oldAngles[PITCH] - 90;
 }


 CL_FinishMove( &cmd );


 if ( cl_debugMove->integer ) {
  if ( cl_debugMove->integer == 1 ) {
   SCR_DebugGraph( abs(cl.viewangles[YAW] - oldAngles[YAW]), 0 );
  }
  if ( cl_debugMove->integer == 2 ) {
   SCR_DebugGraph( abs(cl.viewangles[PITCH] - oldAngles[PITCH]), 0 );
  }
 }

 return cmd;
}
