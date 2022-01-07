
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ demoplaying; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_ACTIVE ;
 int CL_AddReliableCommand (int ) ;
 int Cmd_Argc () ;
 int Cmd_Args () ;
 int Com_Printf (char*) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;

void CL_ForwardToServer_f( void ) {
 if ( cls.state != CA_ACTIVE || clc.demoplaying ) {
  Com_Printf ("Not connected to a server.\n");
  return;
 }


 if ( Cmd_Argc() > 1 ) {
  CL_AddReliableCommand( Cmd_Args() );
 }
}
