
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int flags; } ;
typedef TYPE_2__ line_t ;
struct TYPE_10__ {TYPE_2__* line; } ;
struct TYPE_12__ {scalar_t__ frac; TYPE_1__ d; int isaline; } ;
typedef TYPE_3__ intercept_t ;
typedef int boolean ;
struct TYPE_13__ {scalar_t__ height; scalar_t__ z; int y; int x; } ;


 int FRACUNIT ;
 int I_Error (char*) ;
 int ML_TWOSIDED ;
 int P_LineOpening (TYPE_2__*) ;
 scalar_t__ P_PointOnLineSide (int ,int ,TYPE_2__*) ;
 scalar_t__ bestslidefrac ;
 TYPE_2__* bestslideline ;
 int openbottom ;
 scalar_t__ openrange ;
 scalar_t__ opentop ;
 scalar_t__ secondslidefrac ;
 TYPE_2__* secondslideline ;
 TYPE_4__* slidemo ;

boolean PTR_SlideTraverse (intercept_t* in)
{
    line_t* li;

    if (!in->isaline)
 I_Error ("PTR_SlideTraverse: not a line?");

    li = in->d.line;

    if ( ! (li->flags & ML_TWOSIDED) )
    {
 if (P_PointOnLineSide (slidemo->x, slidemo->y, li))
 {

     return 1;
 }
 goto isblocking;
    }


    P_LineOpening (li);

    if (openrange < slidemo->height)
 goto isblocking;

    if (opentop - slidemo->z < slidemo->height)
 goto isblocking;

    if (openbottom - slidemo->z > 24*FRACUNIT )
 goto isblocking;


    return 1;



  isblocking:
    if (in->frac < bestslidefrac)
    {
 secondslidefrac = bestslidefrac;
 secondslideline = bestslideline;
 bestslidefrac = in->frac;
 bestslideline = li;
    }

    return 0;
}
