
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int flags; scalar_t__ z; scalar_t__ height; } ;
typedef TYPE_4__ mobj_t ;
struct TYPE_20__ {int flags; TYPE_2__* backsector; TYPE_1__* frontsector; scalar_t__ special; } ;
typedef TYPE_5__ line_t ;
struct TYPE_18__ {TYPE_4__* thing; TYPE_5__* line; } ;
struct TYPE_21__ {scalar_t__ frac; TYPE_3__ d; scalar_t__ isaline; } ;
typedef TYPE_6__ intercept_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;
struct TYPE_22__ {scalar_t__ x; scalar_t__ dx; scalar_t__ y; scalar_t__ dy; } ;
struct TYPE_17__ {scalar_t__ floorheight; scalar_t__ ceilingheight; scalar_t__ ceilingpic; } ;
struct TYPE_16__ {scalar_t__ floorheight; scalar_t__ ceilingheight; scalar_t__ ceilingpic; } ;


 int FRACUNIT ;
 scalar_t__ FixedDiv (int,scalar_t__) ;
 scalar_t__ FixedMul (scalar_t__,scalar_t__) ;
 int MF_NOBLOOD ;
 int MF_SHOOTABLE ;
 int ML_TWOSIDED ;
 int P_DamageMobj (TYPE_4__*,TYPE_4__*,TYPE_4__*,scalar_t__) ;
 int P_LineOpening (TYPE_5__*) ;
 int P_ShootSpecialLine (TYPE_4__*,TYPE_5__*) ;
 int P_SpawnBlood (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int P_SpawnPuff (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ aimslope ;
 scalar_t__ attackrange ;
 scalar_t__ la_damage ;
 scalar_t__ openbottom ;
 scalar_t__ opentop ;
 TYPE_4__* shootthing ;
 scalar_t__ shootz ;
 scalar_t__ skyflatnum ;
 TYPE_7__ trace ;

boolean PTR_ShootTraverse (intercept_t* in)
{
    fixed_t x;
    fixed_t y;
    fixed_t z;
    fixed_t frac;

    line_t* li;

    mobj_t* th;

    fixed_t slope;
    fixed_t dist;
    fixed_t thingtopslope;
    fixed_t thingbottomslope;

    if (in->isaline)
    {
 li = in->d.line;

 if (li->special)
     P_ShootSpecialLine (shootthing, li);

 if ( !(li->flags & ML_TWOSIDED) )
     goto hitline;


 P_LineOpening (li);

 dist = FixedMul (attackrange, in->frac);

 if (li->frontsector->floorheight != li->backsector->floorheight)
 {
     slope = FixedDiv (openbottom - shootz , dist);
     if (slope > aimslope)
  goto hitline;
 }

 if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
 {
     slope = FixedDiv (opentop - shootz , dist);
     if (slope < aimslope)
  goto hitline;
 }


 return 1;



      hitline:

 frac = in->frac - FixedDiv (4*FRACUNIT,attackrange);
 x = trace.x + FixedMul (trace.dx, frac);
 y = trace.y + FixedMul (trace.dy, frac);
 z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));

 if (li->frontsector->ceilingpic == skyflatnum)
 {

     if (z > li->frontsector->ceilingheight)
  return 0;


     if (li->backsector && li->backsector->ceilingpic == skyflatnum)
  return 0;
 }


 P_SpawnPuff (x,y,z);


 return 0;
    }


    th = in->d.thing;
    if (th == shootthing)
 return 1;

    if (!(th->flags&MF_SHOOTABLE))
 return 1;


    dist = FixedMul (attackrange, in->frac);
    thingtopslope = FixedDiv (th->z+th->height - shootz , dist);

    if (thingtopslope < aimslope)
 return 1;

    thingbottomslope = FixedDiv (th->z - shootz, dist);

    if (thingbottomslope > aimslope)
 return 1;




    frac = in->frac - FixedDiv (10*FRACUNIT,attackrange);

    x = trace.x + FixedMul (trace.dx, frac);
    y = trace.y + FixedMul (trace.dy, frac);
    z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));



    if (in->d.thing->flags & MF_NOBLOOD)
 P_SpawnPuff (x,y,z);
    else
 P_SpawnBlood (x,y,z, la_damage);

    if (la_damage)
 P_DamageMobj (th, shootthing, shootthing, la_damage);


    return 0;

}
