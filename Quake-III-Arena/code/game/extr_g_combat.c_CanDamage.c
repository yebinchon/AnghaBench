
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_9__ {double fraction; scalar_t__ entityNum; } ;
typedef TYPE_3__ trace_t ;
typedef int qboolean ;
struct TYPE_8__ {scalar_t__ number; } ;
struct TYPE_7__ {int absmax; int absmin; } ;
struct TYPE_10__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_4__ gentity_t ;


 int ENTITYNUM_NONE ;
 int MASK_SOLID ;
 int VectorAdd (int ,int ,double*) ;
 int VectorCopy (double*,double*) ;
 int VectorScale (double*,double,double*) ;
 int qfalse ;
 int qtrue ;
 int trap_Trace (TYPE_3__*,double*,int ,int ,double*,int ,int ) ;
 int vec3_origin ;

qboolean CanDamage (gentity_t *targ, vec3_t origin) {
 vec3_t dest;
 trace_t tr;
 vec3_t midpoint;



 VectorAdd (targ->r.absmin, targ->r.absmax, midpoint);
 VectorScale (midpoint, 0.5, midpoint);

 VectorCopy (midpoint, dest);
 trap_Trace ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
 if (tr.fraction == 1.0 || tr.entityNum == targ->s.number)
  return qtrue;



 VectorCopy (midpoint, dest);
 dest[0] += 15.0;
 dest[1] += 15.0;
 trap_Trace ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy (midpoint, dest);
 dest[0] += 15.0;
 dest[1] -= 15.0;
 trap_Trace ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy (midpoint, dest);
 dest[0] -= 15.0;
 dest[1] += 15.0;
 trap_Trace ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy (midpoint, dest);
 dest[0] -= 15.0;
 dest[1] -= 15.0;
 trap_Trace ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
 if (tr.fraction == 1.0)
  return qtrue;


 return qfalse;
}
