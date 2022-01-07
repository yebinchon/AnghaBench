
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_3__ {int type; float dist; int signbits; scalar_t__* normal; } ;
typedef TYPE_1__ plane_t ;


 scalar_t__ PLANESIDE_EPSILON ;
 int PSIDE_BACK ;
 int PSIDE_FRONT ;

int BoxOnPlaneSide (vec3_t emins, vec3_t emaxs, plane_t *p)
{
 float dist1, dist2;
 int sides;


 if (p->type < 3)
 {
  sides = 0;
  if (emaxs[p->type] > p->dist+PLANESIDE_EPSILON) sides |= PSIDE_FRONT;
  if (emins[p->type] < p->dist-PLANESIDE_EPSILON) sides |= PSIDE_BACK;
  return sides;
 }


 switch (p->signbits)
 {
 case 0:
  dist1 = p->normal[0]*emaxs[0] + p->normal[1]*emaxs[1] + p->normal[2]*emaxs[2];
  dist2 = p->normal[0]*emins[0] + p->normal[1]*emins[1] + p->normal[2]*emins[2];
  break;
 case 1:
  dist1 = p->normal[0]*emins[0] + p->normal[1]*emaxs[1] + p->normal[2]*emaxs[2];
  dist2 = p->normal[0]*emaxs[0] + p->normal[1]*emins[1] + p->normal[2]*emins[2];
  break;
 case 2:
  dist1 = p->normal[0]*emaxs[0] + p->normal[1]*emins[1] + p->normal[2]*emaxs[2];
  dist2 = p->normal[0]*emins[0] + p->normal[1]*emaxs[1] + p->normal[2]*emins[2];
  break;
 case 3:
  dist1 = p->normal[0]*emins[0] + p->normal[1]*emins[1] + p->normal[2]*emaxs[2];
  dist2 = p->normal[0]*emaxs[0] + p->normal[1]*emaxs[1] + p->normal[2]*emins[2];
  break;
 case 4:
  dist1 = p->normal[0]*emaxs[0] + p->normal[1]*emaxs[1] + p->normal[2]*emins[2];
  dist2 = p->normal[0]*emins[0] + p->normal[1]*emins[1] + p->normal[2]*emaxs[2];
  break;
 case 5:
  dist1 = p->normal[0]*emins[0] + p->normal[1]*emaxs[1] + p->normal[2]*emins[2];
  dist2 = p->normal[0]*emaxs[0] + p->normal[1]*emins[1] + p->normal[2]*emaxs[2];
  break;
 case 6:
  dist1 = p->normal[0]*emaxs[0] + p->normal[1]*emins[1] + p->normal[2]*emins[2];
  dist2 = p->normal[0]*emins[0] + p->normal[1]*emaxs[1] + p->normal[2]*emaxs[2];
  break;
 case 7:
  dist1 = p->normal[0]*emins[0] + p->normal[1]*emins[1] + p->normal[2]*emins[2];
  dist2 = p->normal[0]*emaxs[0] + p->normal[1]*emaxs[1] + p->normal[2]*emaxs[2];
  break;
 default:
  dist1 = dist2 = 0;

  break;
 }

 sides = 0;
 if (dist1 - p->dist >= PLANESIDE_EPSILON) sides = PSIDE_FRONT;
 if (dist2 - p->dist < PLANESIDE_EPSILON) sides |= PSIDE_BACK;



 return sides;
}
