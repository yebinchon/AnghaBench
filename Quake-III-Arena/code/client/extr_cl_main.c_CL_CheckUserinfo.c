
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_CHALLENGING ;
 int CL_AddReliableCommand (int ) ;
 int CVAR_USERINFO ;
 int Cvar_InfoString (int) ;
 TYPE_2__* cl_paused ;
 TYPE_1__ cls ;
 int cvar_modifiedFlags ;
 int va (char*,int ) ;

void CL_CheckUserinfo( void ) {

 if ( cls.state < CA_CHALLENGING ) {
  return;
 }

 if ( cl_paused->integer ) {
  return;
 }

 if ( cvar_modifiedFlags & CVAR_USERINFO ) {
  cvar_modifiedFlags &= ~CVAR_USERINFO;
  CL_AddReliableCommand( va("userinfo \"%s\"", Cvar_InfoString( CVAR_USERINFO ) ) );
 }

}
