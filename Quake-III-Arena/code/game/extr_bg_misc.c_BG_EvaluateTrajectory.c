
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_3__ {int trType; int trTime; int trDuration; int trDelta; int trBase; } ;
typedef TYPE_1__ trajectory_t ;


 int Com_Error (int ,char*,int) ;
 double DEFAULT_GRAVITY ;
 int ERR_DROP ;
 float M_PI ;






 int VectorCopy (int ,double*) ;
 int VectorMA (int ,float,int ,double*) ;
 float sin (float) ;

void BG_EvaluateTrajectory( const trajectory_t *tr, int atTime, vec3_t result ) {
 float deltaTime;
 float phase;

 switch( tr->trType ) {
 case 128:
 case 132:
  VectorCopy( tr->trBase, result );
  break;
 case 131:
  deltaTime = ( atTime - tr->trTime ) * 0.001;
  VectorMA( tr->trBase, deltaTime, tr->trDelta, result );
  break;
 case 129:
  deltaTime = ( atTime - tr->trTime ) / (float) tr->trDuration;
  phase = sin( deltaTime * M_PI * 2 );
  VectorMA( tr->trBase, phase, tr->trDelta, result );
  break;
 case 130:
  if ( atTime > tr->trTime + tr->trDuration ) {
   atTime = tr->trTime + tr->trDuration;
  }
  deltaTime = ( atTime - tr->trTime ) * 0.001;
  if ( deltaTime < 0 ) {
   deltaTime = 0;
  }
  VectorMA( tr->trBase, deltaTime, tr->trDelta, result );
  break;
 case 133:
  deltaTime = ( atTime - tr->trTime ) * 0.001;
  VectorMA( tr->trBase, deltaTime, tr->trDelta, result );
  result[2] -= 0.5 * DEFAULT_GRAVITY * deltaTime * deltaTime;
  break;
 default:
  Com_Error( ERR_DROP, "BG_EvaluateTrajectory: unknown trType: %i", tr->trTime );
  break;
 }
}
