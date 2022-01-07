
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numlines; size_t firstline; TYPE_3__* sector; } ;
typedef TYPE_1__ subsector_t ;
typedef int seg_t ;
struct TYPE_6__ {scalar_t__ floorheight; scalar_t__ floorpic; scalar_t__ ceilingheight; scalar_t__ ceilingpic; int lightlevel; } ;


 int I_Error (char*,int,int) ;
 int R_AddLine (int *) ;
 int R_AddSprites (TYPE_3__*) ;
 void* R_FindPlane (scalar_t__,scalar_t__,int ) ;
 int * ceilingplane ;
 int * floorplane ;
 TYPE_3__* frontsector ;
 int numsubsectors ;
 int * segs ;
 scalar_t__ skyflatnum ;
 int sscount ;
 TYPE_1__* subsectors ;
 scalar_t__ viewz ;

void R_Subsector (int num)
{
    int count;
    seg_t* line;
    subsector_t* sub;
    sscount++;
    sub = &subsectors[num];
    frontsector = sub->sector;
    count = sub->numlines;
    line = &segs[sub->firstline];

    if (frontsector->floorheight < viewz)
    {
 floorplane = R_FindPlane (frontsector->floorheight,
      frontsector->floorpic,
      frontsector->lightlevel);
    }
    else
 floorplane = ((void*)0);

    if (frontsector->ceilingheight > viewz
 || frontsector->ceilingpic == skyflatnum)
    {
 ceilingplane = R_FindPlane (frontsector->ceilingheight,
        frontsector->ceilingpic,
        frontsector->lightlevel);
    }
    else
 ceilingplane = ((void*)0);

    R_AddSprites (frontsector);

    while (count--)
    {
 R_AddLine (line);
 line++;
    }
}
