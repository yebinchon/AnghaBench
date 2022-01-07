
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_11__ {double* normal; } ;
struct TYPE_13__ {int fraction; double* endpos; TYPE_3__ plane; int entityNum; scalar_t__ allsolid; } ;
typedef TYPE_5__ trace_t ;
typedef int qboolean ;
struct TYPE_15__ {TYPE_4__* ps; int tracemask; int maxs; int mins; int (* trace ) (TYPE_5__*,double*,int ,int ,double*,int ,int ) ;} ;
struct TYPE_9__ {double* normal; } ;
struct TYPE_10__ {TYPE_1__ plane; } ;
struct TYPE_14__ {double frametime; float impactSpeed; TYPE_2__ groundTrace; scalar_t__ groundPlane; } ;
struct TYPE_12__ {double* velocity; double gravity; double* origin; scalar_t__ pm_time; int clientNum; } ;


 int CrossProduct (double*,double*,double*) ;
 double DotProduct (double*,double*) ;
 int MAX_CLIP_PLANES ;
 int OVERCLIP ;
 int PM_AddTouchEnt (int ) ;
 int PM_ClipVelocity (double*,double*,double*,int ) ;
 int VectorAdd (double*,double*,double*) ;
 int VectorClear (double*) ;
 int VectorCopy (double*,double*) ;
 int VectorMA (double*,float,double*,double*) ;
 int VectorNormalize (double*) ;
 int VectorNormalize2 (double*,double*) ;
 int VectorScale (double*,float,double*) ;
 TYPE_8__* pm ;
 TYPE_7__ pml ;
 int qtrue ;
 int stub1 (TYPE_5__*,double*,int ,int ,double*,int ,int ) ;

qboolean PM_SlideMove( qboolean gravity ) {
 int bumpcount, numbumps;
 vec3_t dir;
 float d;
 int numplanes;
 vec3_t planes[MAX_CLIP_PLANES];
 vec3_t primal_velocity;
 vec3_t clipVelocity;
 int i, j, k;
 trace_t trace;
 vec3_t end;
 float time_left;
 float into;
 vec3_t endVelocity;
 vec3_t endClipVelocity;

 numbumps = 4;

 VectorCopy (pm->ps->velocity, primal_velocity);

 if ( gravity ) {
  VectorCopy( pm->ps->velocity, endVelocity );
  endVelocity[2] -= pm->ps->gravity * pml.frametime;
  pm->ps->velocity[2] = ( pm->ps->velocity[2] + endVelocity[2] ) * 0.5;
  primal_velocity[2] = endVelocity[2];
  if ( pml.groundPlane ) {

   PM_ClipVelocity (pm->ps->velocity, pml.groundTrace.plane.normal,
    pm->ps->velocity, OVERCLIP );
  }
 }

 time_left = pml.frametime;


 if ( pml.groundPlane ) {
  numplanes = 1;
  VectorCopy( pml.groundTrace.plane.normal, planes[0] );
 } else {
  numplanes = 0;
 }


 VectorNormalize2( pm->ps->velocity, planes[numplanes] );
 numplanes++;

 for ( bumpcount=0 ; bumpcount < numbumps ; bumpcount++ ) {


  VectorMA( pm->ps->origin, time_left, pm->ps->velocity, end );


  pm->trace ( &trace, pm->ps->origin, pm->mins, pm->maxs, end, pm->ps->clientNum, pm->tracemask);

  if (trace.allsolid) {

   pm->ps->velocity[2] = 0;
   return qtrue;
  }

  if (trace.fraction > 0) {

   VectorCopy (trace.endpos, pm->ps->origin);
  }

  if (trace.fraction == 1) {
    break;
  }


  PM_AddTouchEnt( trace.entityNum );

  time_left -= time_left * trace.fraction;

  if (numplanes >= MAX_CLIP_PLANES) {

   VectorClear( pm->ps->velocity );
   return qtrue;
  }






  for ( i = 0 ; i < numplanes ; i++ ) {
   if ( DotProduct( trace.plane.normal, planes[i] ) > 0.99 ) {
    VectorAdd( trace.plane.normal, pm->ps->velocity, pm->ps->velocity );
    break;
   }
  }
  if ( i < numplanes ) {
   continue;
  }
  VectorCopy (trace.plane.normal, planes[numplanes]);
  numplanes++;






  for ( i = 0 ; i < numplanes ; i++ ) {
   into = DotProduct( pm->ps->velocity, planes[i] );
   if ( into >= 0.1 ) {
    continue;
   }


   if ( -into > pml.impactSpeed ) {
    pml.impactSpeed = -into;
   }


   PM_ClipVelocity (pm->ps->velocity, planes[i], clipVelocity, OVERCLIP );


   PM_ClipVelocity (endVelocity, planes[i], endClipVelocity, OVERCLIP );


   for ( j = 0 ; j < numplanes ; j++ ) {
    if ( j == i ) {
     continue;
    }
    if ( DotProduct( clipVelocity, planes[j] ) >= 0.1 ) {
     continue;
    }


    PM_ClipVelocity( clipVelocity, planes[j], clipVelocity, OVERCLIP );
    PM_ClipVelocity( endClipVelocity, planes[j], endClipVelocity, OVERCLIP );


    if ( DotProduct( clipVelocity, planes[i] ) >= 0 ) {
     continue;
    }


    CrossProduct (planes[i], planes[j], dir);
    VectorNormalize( dir );
    d = DotProduct( dir, pm->ps->velocity );
    VectorScale( dir, d, clipVelocity );

    CrossProduct (planes[i], planes[j], dir);
    VectorNormalize( dir );
    d = DotProduct( dir, endVelocity );
    VectorScale( dir, d, endClipVelocity );


    for ( k = 0 ; k < numplanes ; k++ ) {
     if ( k == i || k == j ) {
      continue;
     }
     if ( DotProduct( clipVelocity, planes[k] ) >= 0.1 ) {
      continue;
     }


     VectorClear( pm->ps->velocity );
     return qtrue;
    }
   }


   VectorCopy( clipVelocity, pm->ps->velocity );
   VectorCopy( endClipVelocity, endVelocity );
   break;
  }
 }

 if ( gravity ) {
  VectorCopy( endVelocity, pm->ps->velocity );
 }


 if ( pm->ps->pm_time ) {
  VectorCopy( primal_velocity, pm->ps->velocity );
 }

 return ( bumpcount != 0 );
}
