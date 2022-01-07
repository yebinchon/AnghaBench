
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t movedir; int x; int y; TYPE_1__* target; } ;
typedef TYPE_2__ mobj_t ;
typedef int fixed_t ;
typedef size_t dirtype_t ;
struct TYPE_5__ {int x; int y; } ;


 int DI_EAST ;
 size_t DI_NODIR ;
 size_t DI_NORTH ;
 size_t DI_SOUTH ;
 int DI_SOUTHEAST ;
 size_t DI_WEST ;
 int FRACUNIT ;
 int I_Error (char*) ;
 int P_Random () ;
 scalar_t__ P_TryWalk (TYPE_2__*) ;
 scalar_t__ abs (int) ;
 size_t* diags ;
 size_t* opposite ;

void P_NewChaseDir (mobj_t* actor)
{
    fixed_t deltax;
    fixed_t deltay;

    dirtype_t d[3];

    int tdir;
    dirtype_t olddir;

    dirtype_t turnaround;

    if (!actor->target)
 I_Error ("P_NewChaseDir: called with no target");

    olddir = actor->movedir;
    turnaround=opposite[olddir];

    deltax = actor->target->x - actor->x;
    deltay = actor->target->y - actor->y;

    if (deltax>10*FRACUNIT)
 d[1]= DI_EAST;
    else if (deltax<-10*FRACUNIT)
 d[1]= DI_WEST;
    else
 d[1]=DI_NODIR;

    if (deltay<-10*FRACUNIT)
 d[2]= DI_SOUTH;
    else if (deltay>10*FRACUNIT)
 d[2]= DI_NORTH;
    else
 d[2]=DI_NODIR;


    if (d[1] != DI_NODIR
 && d[2] != DI_NODIR)
    {
 actor->movedir = diags[((deltay<0)<<1)+(deltax>0)];
 if (actor->movedir != turnaround && P_TryWalk(actor))
     return;
    }


    if (P_Random() > 200
 || abs(deltay)>abs(deltax))
    {
 tdir=d[1];
 d[1]=d[2];
 d[2]=tdir;
    }

    if (d[1]==turnaround)
 d[1]=DI_NODIR;
    if (d[2]==turnaround)
 d[2]=DI_NODIR;

    if (d[1]!=DI_NODIR)
    {
 actor->movedir = d[1];
 if (P_TryWalk(actor))
 {

     return;
 }
    }

    if (d[2]!=DI_NODIR)
    {
 actor->movedir =d[2];

 if (P_TryWalk(actor))
     return;
    }



    if (olddir!=DI_NODIR)
    {
 actor->movedir =olddir;

 if (P_TryWalk(actor))
     return;
    }


    if (P_Random()&1)
    {
 for ( tdir=DI_EAST;
       tdir<=DI_SOUTHEAST;
       tdir++ )
 {
     if (tdir!=turnaround)
     {
  actor->movedir =tdir;

  if ( P_TryWalk(actor) )
      return;
     }
 }
    }
    else
    {
 for ( tdir=DI_SOUTHEAST;
       tdir != (DI_EAST-1);
       tdir-- )
 {
     if (tdir!=turnaround)
     {
  actor->movedir =tdir;

  if ( P_TryWalk(actor) )
      return;
     }
 }
    }

    if (turnaround != DI_NODIR)
    {
 actor->movedir =turnaround;
 if ( P_TryWalk(actor) )
     return;
    }

    actor->movedir = DI_NODIR;
}
