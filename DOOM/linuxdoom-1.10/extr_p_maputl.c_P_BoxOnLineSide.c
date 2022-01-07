
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int slopetype; int dy; TYPE_1__* v1; int dx; } ;
typedef TYPE_2__ line_t ;
typedef int fixed_t ;
struct TYPE_5__ {int x; int y; } ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;
 int P_PointOnLineSide (int ,int ,TYPE_2__*) ;





int
P_BoxOnLineSide
( fixed_t* tmbox,
  line_t* ld )
{
    int p1;
    int p2;

    switch (ld->slopetype)
    {
      case 131:
 p1 = tmbox[BOXTOP] > ld->v1->y;
 p2 = tmbox[BOXBOTTOM] > ld->v1->y;
 if (ld->dx < 0)
 {
     p1 ^= 1;
     p2 ^= 1;
 }
 break;

      case 128:
 p1 = tmbox[BOXRIGHT] < ld->v1->x;
 p2 = tmbox[BOXLEFT] < ld->v1->x;
 if (ld->dy < 0)
 {
     p1 ^= 1;
     p2 ^= 1;
 }
 break;

      case 129:
 p1 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXTOP], ld);
 p2 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXBOTTOM], ld);
 break;

      case 130:
 p1 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXTOP], ld);
 p2 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXBOTTOM], ld);
 break;
    }

    if (p1 == p2)
 return p1;
    return -1;
}
