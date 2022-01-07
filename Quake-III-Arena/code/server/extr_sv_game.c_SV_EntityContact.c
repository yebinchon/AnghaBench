
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int startsolid; } ;
typedef TYPE_2__ trace_t ;
struct TYPE_7__ {float* currentOrigin; float* currentAngles; } ;
struct TYPE_9__ {TYPE_1__ r; } ;
typedef TYPE_3__ sharedEntity_t ;
typedef int qboolean ;
typedef int clipHandle_t ;


 int CM_TransformedBoxTrace (TYPE_2__*,int ,int ,int ,int ,int ,int,float const*,float const*,int) ;
 int SV_ClipHandleForEntity (TYPE_3__ const*) ;
 int vec3_origin ;

qboolean SV_EntityContact( vec3_t mins, vec3_t maxs, const sharedEntity_t *gEnt, int capsule ) {
 const float *origin, *angles;
 clipHandle_t ch;
 trace_t trace;


 origin = gEnt->r.currentOrigin;
 angles = gEnt->r.currentAngles;

 ch = SV_ClipHandleForEntity( gEnt );
 CM_TransformedBoxTrace ( &trace, vec3_origin, vec3_origin, mins, maxs,
  ch, -1, origin, angles, capsule );

 return trace.startsolid;
}
