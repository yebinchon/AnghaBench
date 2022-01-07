
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int type; scalar_t__ dist; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_9__ {scalar_t__* mins; scalar_t__* maxs; int numsides; TYPE_1__* sides; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_7__ {int planenum; } ;


 int BoxOnPlaneSide (scalar_t__*,scalar_t__*,TYPE_2__*) ;
 int Error (char*) ;
 int MAX_MAPFILE_PLANES ;
 scalar_t__ PLANESIDE_EPSILON ;
 int PSIDE_BACK ;
 int PSIDE_BOTH ;
 int PSIDE_FACING ;
 int PSIDE_FRONT ;
 TYPE_2__* mapplanes ;

int QuickTestBrushToPlanenum (bspbrush_t *brush, int planenum, int *numsplits)
{
 int i, num;
 plane_t *plane;
 int s;

 *numsplits = 0;

 plane = &mapplanes[planenum];
 for (i = 0; i < brush->numsides; i++)
 {
  num = brush->sides[i].planenum;
  if (num >= MAX_MAPFILE_PLANES)
   Error ("bad planenum");
  if (num == planenum)
   return PSIDE_BACK|PSIDE_FACING;
  if (num == (planenum ^ 1) )
   return PSIDE_FRONT|PSIDE_FACING;

 }


 s = BoxOnPlaneSide (brush->mins, brush->maxs, plane);


 if (s == PSIDE_BOTH)
 {
  *numsplits += 3;
 }

 return s;
}
