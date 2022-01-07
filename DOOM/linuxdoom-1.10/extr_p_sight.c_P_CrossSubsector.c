
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ vertex_t ;
struct TYPE_14__ {int numlines; size_t firstline; } ;
typedef TYPE_2__ subsector_t ;
struct TYPE_15__ {TYPE_4__* backsector; TYPE_4__* frontsector; TYPE_5__* linedef; } ;
typedef TYPE_3__ seg_t ;
struct TYPE_16__ {scalar_t__ floorheight; scalar_t__ ceilingheight; } ;
typedef TYPE_4__ sector_t ;
struct TYPE_17__ {scalar_t__ validcount; int flags; TYPE_1__* v2; TYPE_1__* v1; } ;
typedef TYPE_5__ line_t ;
typedef scalar_t__ fixed_t ;
struct TYPE_18__ {scalar_t__ y; scalar_t__ x; scalar_t__ dy; scalar_t__ dx; } ;
typedef TYPE_6__ divline_t ;
typedef int boolean ;


 scalar_t__ FixedDiv (scalar_t__,scalar_t__) ;
 int I_Error (char*,int,int) ;
 int ML_TWOSIDED ;
 int P_DivlineSide (scalar_t__,scalar_t__,TYPE_6__*) ;
 scalar_t__ P_InterceptVector2 (TYPE_6__*,TYPE_6__*) ;
 scalar_t__ bottomslope ;
 int numsubsectors ;
 TYPE_3__* segs ;
 scalar_t__ sightzstart ;
 TYPE_6__ strace ;
 TYPE_2__* subsectors ;
 scalar_t__ t2x ;
 scalar_t__ t2y ;
 scalar_t__ topslope ;
 scalar_t__ validcount ;

boolean P_CrossSubsector (int num)
{
    seg_t* seg;
    line_t* line;
    int s1;
    int s2;
    int count;
    subsector_t* sub;
    sector_t* front;
    sector_t* back;
    fixed_t opentop;
    fixed_t openbottom;
    divline_t divl;
    vertex_t* v1;
    vertex_t* v2;
    fixed_t frac;
    fixed_t slope;
    sub = &subsectors[num];


    count = sub->numlines;
    seg = &segs[sub->firstline];

    for ( ; count ; seg++, count--)
    {
 line = seg->linedef;


 if (line->validcount == validcount)
     continue;

 line->validcount = validcount;

 v1 = line->v1;
 v2 = line->v2;
 s1 = P_DivlineSide (v1->x,v1->y, &strace);
 s2 = P_DivlineSide (v2->x, v2->y, &strace);


 if (s1 == s2)
     continue;

 divl.x = v1->x;
 divl.y = v1->y;
 divl.dx = v2->x - v1->x;
 divl.dy = v2->y - v1->y;
 s1 = P_DivlineSide (strace.x, strace.y, &divl);
 s2 = P_DivlineSide (t2x, t2y, &divl);


 if (s1 == s2)
     continue;



 if ( !(line->flags & ML_TWOSIDED) )
     return 0;


 front = seg->frontsector;
 back = seg->backsector;


 if (front->floorheight == back->floorheight
     && front->ceilingheight == back->ceilingheight)
     continue;



 if (front->ceilingheight < back->ceilingheight)
     opentop = front->ceilingheight;
 else
     opentop = back->ceilingheight;


 if (front->floorheight > back->floorheight)
     openbottom = front->floorheight;
 else
     openbottom = back->floorheight;


 if (openbottom >= opentop)
     return 0;

 frac = P_InterceptVector2 (&strace, &divl);

 if (front->floorheight != back->floorheight)
 {
     slope = FixedDiv (openbottom - sightzstart , frac);
     if (slope > bottomslope)
  bottomslope = slope;
 }

 if (front->ceilingheight != back->ceilingheight)
 {
     slope = FixedDiv (opentop - sightzstart , frac);
     if (slope < topslope)
  topslope = slope;
 }

 if (topslope <= bottomslope)
     return 0;
    }

    return 1;
}
