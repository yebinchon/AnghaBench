
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cmds; scalar_t__ used; } ;
typedef TYPE_1__ renderCommandList_t ;
typedef scalar_t__ qboolean ;
struct TYPE_16__ {TYPE_1__ commands; } ;
struct TYPE_15__ {scalar_t__ smpActive; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_11__ {size_t smpFrame; } ;


 int GLimp_FrontEndSleep () ;
 int GLimp_WakeRenderer (TYPE_1__*) ;
 int PRINT_ALL ;
 int RB_ExecuteRenderCommands (scalar_t__) ;
 int RC_END_OF_LIST ;
 int R_PerformanceCounters () ;
 int assert (TYPE_1__*) ;
 TYPE_7__** backEndData ;
 int c_blockedOnMain ;
 int c_blockedOnRender ;
 TYPE_6__ glConfig ;
 TYPE_5__* r_showSmp ;
 TYPE_4__* r_skipBackEnd ;
 scalar_t__ renderThreadActive ;
 TYPE_3__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 TYPE_2__ tr ;

void R_IssueRenderCommands( qboolean runPerformanceCounters ) {
 renderCommandList_t *cmdList;

 cmdList = &backEndData[tr.smpFrame]->commands;
 assert(cmdList);

 *(int *)(cmdList->cmds + cmdList->used) = RC_END_OF_LIST;


 cmdList->used = 0;

 if ( glConfig.smpActive ) {

  if ( renderThreadActive ) {
   c_blockedOnRender++;
   if ( r_showSmp->integer ) {
    ri.Printf( PRINT_ALL, "R" );
   }
  } else {
   c_blockedOnMain++;
   if ( r_showSmp->integer ) {
    ri.Printf( PRINT_ALL, "." );
   }
  }


  GLimp_FrontEndSleep();
 }



 if ( runPerformanceCounters ) {
  R_PerformanceCounters();
 }


 if ( !r_skipBackEnd->integer ) {

  if ( !glConfig.smpActive ) {
   RB_ExecuteRenderCommands( cmdList->cmds );
  } else {
   GLimp_WakeRenderer( cmdList );
  }
 }
}
