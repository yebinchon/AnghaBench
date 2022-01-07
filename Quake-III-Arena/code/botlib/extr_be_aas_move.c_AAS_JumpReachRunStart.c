
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_5__ {int* start; int* end; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_6__ {int* endpos; int stopevent; } ;
typedef TYPE_2__ aas_clientmove_t ;


 int AAS_PredictClientMovement (TYPE_2__*,int,int*,int ,int ,int ,int*,int,int,float,int,int ,int ) ;
 int PRESENCE_NORMAL ;
 int SE_ENTERLAVA ;
 int SE_ENTERSLIME ;
 int SE_ENTERWATER ;
 int SE_GAP ;
 int SE_HITGROUNDDAMAGE ;
 int VectorCopy (int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,int,int*) ;
 int qfalse ;
 int qtrue ;
 int vec3_origin ;

void AAS_JumpReachRunStart(aas_reachability_t *reach, vec3_t runstart)
{
 vec3_t hordir, start, cmdmove;
 aas_clientmove_t move;


 hordir[0] = reach->start[0] - reach->end[0];
 hordir[1] = reach->start[1] - reach->end[1];
 hordir[2] = 0;
 VectorNormalize(hordir);

 VectorCopy(reach->start, start);
 start[2] += 1;

 VectorScale(hordir, 400, cmdmove);

 AAS_PredictClientMovement(&move, -1, start, PRESENCE_NORMAL, qtrue,
        vec3_origin, cmdmove, 1, 2, 0.1f,
        SE_ENTERWATER|SE_ENTERSLIME|SE_ENTERLAVA|
        SE_HITGROUNDDAMAGE|SE_GAP, 0, qfalse);
 VectorCopy(move.endpos, runstart);

 if (move.stopevent & (SE_ENTERSLIME|SE_ENTERLAVA|SE_HITGROUNDDAMAGE))
 {
  VectorCopy(start, runstart);
 }
}
