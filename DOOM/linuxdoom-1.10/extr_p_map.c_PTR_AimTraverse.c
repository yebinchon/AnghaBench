
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int flags; scalar_t__ z; scalar_t__ height; } ;
typedef TYPE_4__ mobj_t ;
struct TYPE_15__ {int flags; TYPE_2__* backsector; TYPE_1__* frontsector; } ;
typedef TYPE_5__ line_t ;
struct TYPE_13__ {TYPE_4__* thing; TYPE_5__* line; } ;
struct TYPE_16__ {int frac; TYPE_3__ d; scalar_t__ isaline; } ;
typedef TYPE_6__ intercept_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;
struct TYPE_12__ {scalar_t__ floorheight; scalar_t__ ceilingheight; } ;
struct TYPE_11__ {scalar_t__ floorheight; scalar_t__ ceilingheight; } ;


 scalar_t__ FixedDiv (scalar_t__,scalar_t__) ;
 scalar_t__ FixedMul (int ,int ) ;
 int MF_SHOOTABLE ;
 int ML_TWOSIDED ;
 int P_LineOpening (TYPE_5__*) ;
 scalar_t__ aimslope ;
 int attackrange ;
 scalar_t__ bottomslope ;
 TYPE_4__* linetarget ;
 scalar_t__ openbottom ;
 scalar_t__ opentop ;
 TYPE_4__* shootthing ;
 scalar_t__ shootz ;
 scalar_t__ topslope ;

boolean
PTR_AimTraverse (intercept_t* in)
{
    line_t* li;
    mobj_t* th;
    fixed_t slope;
    fixed_t thingtopslope;
    fixed_t thingbottomslope;
    fixed_t dist;

    if (in->isaline)
    {
 li = in->d.line;

 if ( !(li->flags & ML_TWOSIDED) )
     return 0;




 P_LineOpening (li);

 if (openbottom >= opentop)
     return 0;

 dist = FixedMul (attackrange, in->frac);

 if (li->frontsector->floorheight != li->backsector->floorheight)
 {
     slope = FixedDiv (openbottom - shootz , dist);
     if (slope > bottomslope)
  bottomslope = slope;
 }

 if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
 {
     slope = FixedDiv (opentop - shootz , dist);
     if (slope < topslope)
  topslope = slope;
 }

 if (topslope <= bottomslope)
     return 0;

 return 1;
    }


    th = in->d.thing;
    if (th == shootthing)
 return 1;

    if (!(th->flags&MF_SHOOTABLE))
 return 1;


    dist = FixedMul (attackrange, in->frac);
    thingtopslope = FixedDiv (th->z+th->height - shootz , dist);

    if (thingtopslope < bottomslope)
 return 1;

    thingbottomslope = FixedDiv (th->z - shootz, dist);

    if (thingbottomslope > topslope)
 return 1;


    if (thingtopslope > topslope)
 thingtopslope = topslope;

    if (thingbottomslope < bottomslope)
 thingbottomslope = bottomslope;

    aimslope = (thingtopslope+thingbottomslope)/2;
    linetarget = th;

    return 0;
}
