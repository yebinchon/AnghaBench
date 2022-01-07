
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ interpolate; int currentValid; int nextState; int currentState; } ;
typedef TYPE_1__ centity_t ;


 int CG_CheckEvents (TYPE_1__*) ;
 int CG_ResetEntity (TYPE_1__*) ;
 scalar_t__ qfalse ;
 int qtrue ;

__attribute__((used)) static void CG_TransitionEntity( centity_t *cent ) {
 cent->currentState = cent->nextState;
 cent->currentValid = qtrue;


 if ( !cent->interpolate ) {
  CG_ResetEntity( cent );
 }


 cent->interpolate = qfalse;


 CG_CheckEvents( cent );
}
