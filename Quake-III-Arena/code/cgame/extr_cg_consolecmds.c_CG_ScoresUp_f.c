
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int scoreFadeTime; scalar_t__ showScores; } ;


 TYPE_1__ cg ;
 scalar_t__ qfalse ;

__attribute__((used)) static void CG_ScoresUp_f( void ) {
 if ( cg.showScores ) {
  cg.showScores = qfalse;
  cg.scoreFadeTime = cg.time;
 }
}
