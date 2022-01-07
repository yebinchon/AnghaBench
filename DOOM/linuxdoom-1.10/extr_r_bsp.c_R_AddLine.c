
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* sidedef; TYPE_7__* backsector; TYPE_2__* v2; TYPE_1__* v1; } ;
typedef TYPE_4__ seg_t ;
typedef int angle_t ;
struct TYPE_14__ {scalar_t__ ceilingheight; scalar_t__ floorheight; scalar_t__ ceilingpic; scalar_t__ floorpic; scalar_t__ lightlevel; } ;
struct TYPE_13__ {scalar_t__ floorheight; scalar_t__ ceilingheight; scalar_t__ ceilingpic; scalar_t__ floorpic; scalar_t__ lightlevel; } ;
struct TYPE_11__ {scalar_t__ midtexture; } ;
struct TYPE_10__ {int y; int x; } ;
struct TYPE_9__ {int y; int x; } ;


 int ANG180 ;
 int ANG90 ;
 int ANGLETOFINESHIFT ;
 int R_ClipPassWallSegment (int,int) ;
 int R_ClipSolidWallSegment (int,int) ;
 int R_PointToAngle (int ,int ) ;
 TYPE_7__* backsector ;
 int clipangle ;
 TYPE_4__* curline ;
 TYPE_5__* frontsector ;
 int rw_angle1 ;
 scalar_t__ viewangle ;
 int* viewangletox ;

void R_AddLine (seg_t* line)
{
    int x1;
    int x2;
    angle_t angle1;
    angle_t angle2;
    angle_t span;
    angle_t tspan;

    curline = line;


    angle1 = R_PointToAngle (line->v1->x, line->v1->y);
    angle2 = R_PointToAngle (line->v2->x, line->v2->y);



    span = angle1 - angle2;


    if (span >= ANG180)
 return;


    rw_angle1 = angle1;
    angle1 -= viewangle;
    angle2 -= viewangle;

    tspan = angle1 + clipangle;
    if (tspan > 2*clipangle)
    {
 tspan -= 2*clipangle;


 if (tspan >= span)
     return;

 angle1 = clipangle;
    }
    tspan = clipangle - angle2;
    if (tspan > 2*clipangle)
    {
 tspan -= 2*clipangle;


 if (tspan >= span)
     return;
 angle2 = -clipangle;
    }



    angle1 = (angle1+ANG90)>>ANGLETOFINESHIFT;
    angle2 = (angle2+ANG90)>>ANGLETOFINESHIFT;
    x1 = viewangletox[angle1];
    x2 = viewangletox[angle2];


    if (x1 == x2)
 return;

    backsector = line->backsector;


    if (!backsector)
 goto clipsolid;


    if (backsector->ceilingheight <= frontsector->floorheight
 || backsector->floorheight >= frontsector->ceilingheight)
 goto clipsolid;


    if (backsector->ceilingheight != frontsector->ceilingheight
 || backsector->floorheight != frontsector->floorheight)
 goto clippass;






    if (backsector->ceilingpic == frontsector->ceilingpic
 && backsector->floorpic == frontsector->floorpic
 && backsector->lightlevel == frontsector->lightlevel
 && curline->sidedef->midtexture == 0)
    {
 return;
    }


  clippass:
    R_ClipPassWallSegment (x1, x2-1);
    return;

  clipsolid:
    R_ClipSolidWallSegment (x1, x2-1);
}
