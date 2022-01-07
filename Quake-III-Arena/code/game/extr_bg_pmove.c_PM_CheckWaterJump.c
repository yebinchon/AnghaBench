
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int qboolean ;
struct TYPE_6__ {int waterlevel; int (* pointcontents ) (int*,int ) ;TYPE_1__* ps; } ;
struct TYPE_5__ {int* forward; } ;
struct TYPE_4__ {int pm_time; int* velocity; int pm_flags; int clientNum; int origin; } ;


 int CONTENTS_SOLID ;
 int PMF_TIME_WATERJUMP ;
 int VectorMA (int ,int,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,int,int*) ;
 TYPE_3__* pm ;
 TYPE_2__ pml ;
 int qfalse ;
 int qtrue ;
 int stub1 (int*,int ) ;
 int stub2 (int*,int ) ;

__attribute__((used)) static qboolean PM_CheckWaterJump( void ) {
 vec3_t spot;
 int cont;
 vec3_t flatforward;

 if (pm->ps->pm_time) {
  return qfalse;
 }


 if ( pm->waterlevel != 2 ) {
  return qfalse;
 }

 flatforward[0] = pml.forward[0];
 flatforward[1] = pml.forward[1];
 flatforward[2] = 0;
 VectorNormalize (flatforward);

 VectorMA (pm->ps->origin, 30, flatforward, spot);
 spot[2] += 4;
 cont = pm->pointcontents (spot, pm->ps->clientNum );
 if ( !(cont & CONTENTS_SOLID) ) {
  return qfalse;
 }

 spot[2] += 16;
 cont = pm->pointcontents (spot, pm->ps->clientNum );
 if ( cont ) {
  return qfalse;
 }


 VectorScale (pml.forward, 200, pm->ps->velocity);
 pm->ps->velocity[2] = 350;

 pm->ps->pm_flags |= PMF_TIME_WATERJUMP;
 pm->ps->pm_time = 2000;

 return qtrue;
}
