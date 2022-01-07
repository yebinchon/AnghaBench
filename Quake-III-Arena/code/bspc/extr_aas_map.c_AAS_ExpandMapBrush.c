
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {size_t planenum; int surf; int flags; } ;
typedef TYPE_1__ side_t ;
struct TYPE_7__ {float dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_8__ {int numsides; TYPE_1__* original_sides; } ;
typedef TYPE_3__ mapbrush_t ;


 scalar_t__ BoxOriginDistanceFromPlane (int ,int ,int ,int ) ;
 scalar_t__ CapsuleOriginDistanceFromPlane (int ,int ,int ) ;
 size_t FindFloatPlane (int ,float) ;
 int SFL_BEVEL ;
 int SURF_SKIP ;
 scalar_t__ capsule_collision ;
 TYPE_2__* mapplanes ;

void AAS_ExpandMapBrush(mapbrush_t *brush, vec3_t mins, vec3_t maxs)
{
 int sn;
 float dist;
 side_t *s;
 plane_t *plane;

 for (sn = 0; sn < brush->numsides; sn++)
 {
  s = brush->original_sides + sn;
  plane = &mapplanes[s->planenum];
  dist = plane->dist;
  if (capsule_collision) {
   dist += CapsuleOriginDistanceFromPlane(plane->normal, mins, maxs);
  }
  else {
   dist += BoxOriginDistanceFromPlane(plane->normal, mins, maxs, 0);
  }
  s->planenum = FindFloatPlane(plane->normal, dist);

  s->flags &= ~SFL_BEVEL;

  s->surf &= ~SURF_SKIP;




 }
}
