
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fixed_t ;
struct TYPE_3__ {int last; int first; } ;
typedef TYPE_1__ cliprange_t ;
typedef int boolean ;
typedef int angle_t ;


 int ANG180 ;
 int ANG90 ;
 int ANGLETOFINESHIFT ;
 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;
 int R_PointToAngle (int ,int ) ;
 size_t** checkcoord ;
 int clipangle ;
 TYPE_1__* solidsegs ;
 int viewangle ;
 int* viewangletox ;
 int viewx ;
 int viewy ;

boolean R_CheckBBox (fixed_t* bspcoord)
{
    int boxx;
    int boxy;
    int boxpos;

    fixed_t x1;
    fixed_t y1;
    fixed_t x2;
    fixed_t y2;

    angle_t angle1;
    angle_t angle2;
    angle_t span;
    angle_t tspan;

    cliprange_t* start;

    int sx1;
    int sx2;



    if (viewx <= bspcoord[BOXLEFT])
 boxx = 0;
    else if (viewx < bspcoord[BOXRIGHT])
 boxx = 1;
    else
 boxx = 2;

    if (viewy >= bspcoord[BOXTOP])
 boxy = 0;
    else if (viewy > bspcoord[BOXBOTTOM])
 boxy = 1;
    else
 boxy = 2;

    boxpos = (boxy<<2)+boxx;
    if (boxpos == 5)
 return 1;

    x1 = bspcoord[checkcoord[boxpos][0]];
    y1 = bspcoord[checkcoord[boxpos][1]];
    x2 = bspcoord[checkcoord[boxpos][2]];
    y2 = bspcoord[checkcoord[boxpos][3]];


    angle1 = R_PointToAngle (x1, y1) - viewangle;
    angle2 = R_PointToAngle (x2, y2) - viewangle;

    span = angle1 - angle2;


    if (span >= ANG180)
 return 1;

    tspan = angle1 + clipangle;

    if (tspan > 2*clipangle)
    {
 tspan -= 2*clipangle;


 if (tspan >= span)
     return 0;

 angle1 = clipangle;
    }
    tspan = clipangle - angle2;
    if (tspan > 2*clipangle)
    {
 tspan -= 2*clipangle;


 if (tspan >= span)
     return 0;

 angle2 = -clipangle;
    }





    angle1 = (angle1+ANG90)>>ANGLETOFINESHIFT;
    angle2 = (angle2+ANG90)>>ANGLETOFINESHIFT;
    sx1 = viewangletox[angle1];
    sx2 = viewangletox[angle2];


    if (sx1 == sx2)
 return 0;
    sx2--;

    start = solidsegs;
    while (start->last < sx2)
 start++;

    if (sx1 >= start->first
 && sx2 <= start->last)
    {

 return 0;
    }

    return 1;
}
