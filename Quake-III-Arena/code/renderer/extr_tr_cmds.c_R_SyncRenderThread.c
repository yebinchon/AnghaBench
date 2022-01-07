
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int smpActive; } ;
struct TYPE_3__ {int registered; } ;


 int GLimp_FrontEndSleep () ;
 int R_IssueRenderCommands (int ) ;
 TYPE_2__ glConfig ;
 int qfalse ;
 TYPE_1__ tr ;

void R_SyncRenderThread( void ) {
 if ( !tr.registered ) {
  return;
 }
 R_IssueRenderCommands( qfalse );

 if ( !glConfig.smpActive ) {
  return;
 }
 GLimp_FrontEndSleep();
}
