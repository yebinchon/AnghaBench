
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scoresRequestTime; scalar_t__ time; void* showScores; scalar_t__ numScores; } ;


 int CG_BuildSpectatorString () ;
 TYPE_1__ cg ;
 void* qtrue ;
 int trap_SendClientCommand (char*) ;

__attribute__((used)) static void CG_ScoresDown_f( void ) {




 if ( cg.scoresRequestTime + 2000 < cg.time ) {


  cg.scoresRequestTime = cg.time;
  trap_SendClientCommand( "score" );



  if ( !cg.showScores ) {
   cg.showScores = qtrue;
   cg.numScores = 0;
  }
 } else {


  cg.showScores = qtrue;
 }
}
