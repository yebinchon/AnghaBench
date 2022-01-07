
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_4__ {int stopevent; } ;
typedef TYPE_1__ aas_clientmove_t ;
struct TYPE_5__ {int (* Print ) (int ,char*) ;} ;


 int AAS_ClearShownDebugLines () ;
 int AAS_PredictClientMovement (TYPE_1__*,int,int*,int ,int ,int*,int*,int,int,float,int ,int ,int ) ;
 int AAS_Swimming (int*) ;
 int PRESENCE_NORMAL ;
 int PRT_MESSAGE ;
 int SE_HITGROUND ;
 int SE_LEAVEGROUND ;
 int VectorClear (int*) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,int,int*) ;
 TYPE_2__ botimport ;
 int qtrue ;
 int stub1 (int ,char*) ;

void AAS_TestMovementPrediction(int entnum, vec3_t origin, vec3_t dir)
{
 vec3_t velocity, cmdmove;
 aas_clientmove_t move;

 VectorClear(velocity);
 if (!AAS_Swimming(origin)) dir[2] = 0;
 VectorNormalize(dir);
 VectorScale(dir, 400, cmdmove);
 cmdmove[2] = 224;
 AAS_ClearShownDebugLines();
 AAS_PredictClientMovement(&move, entnum, origin, PRESENCE_NORMAL, qtrue,
         velocity, cmdmove, 13, 13, 0.1f, SE_HITGROUND, 0, qtrue);
 if (move.stopevent & SE_LEAVEGROUND)
 {
  botimport.Print(PRT_MESSAGE, "leave ground\n");
 }
}
