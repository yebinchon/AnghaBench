
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {int groundPlane; int forward; } ;
struct TYPE_4__ {int velocity; int origin; int grapplePoint; } ;


 int VectorAdd (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 int VectorNormalize (int ) ;
 int VectorScale (int ,int,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_3__* pm ;
 TYPE_2__ pml ;
 int qfalse ;

__attribute__((used)) static void PM_GrappleMove( void ) {
 vec3_t vel, v;
 float vlen;

 VectorScale(pml.forward, -16, v);
 VectorAdd(pm->ps->grapplePoint, v, v);
 VectorSubtract(v, pm->ps->origin, vel);
 vlen = VectorLength(vel);
 VectorNormalize( vel );

 if (vlen <= 100)
  VectorScale(vel, 10 * vlen, vel);
 else
  VectorScale(vel, 800, vel);

 VectorCopy(vel, pm->ps->velocity);

 pml.groundPlane = qfalse;
}
