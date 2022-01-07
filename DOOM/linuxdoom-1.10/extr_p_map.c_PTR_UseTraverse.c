
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* line; } ;
struct TYPE_11__ {TYPE_1__ d; } ;
typedef TYPE_2__ intercept_t ;
typedef int boolean ;
struct TYPE_13__ {int special; } ;
struct TYPE_12__ {int y; int x; } ;


 int P_LineOpening (TYPE_6__*) ;
 int P_PointOnLineSide (int ,int ,TYPE_6__*) ;
 int P_UseSpecialLine (TYPE_3__*,TYPE_6__*,int) ;
 int S_StartSound (TYPE_3__*,int ) ;
 scalar_t__ openrange ;
 int sfx_noway ;
 TYPE_3__* usething ;

boolean PTR_UseTraverse (intercept_t* in)
{
    int side;

    if (!in->d.line->special)
    {
 P_LineOpening (in->d.line);
 if (openrange <= 0)
 {
     S_StartSound (usething, sfx_noway);


     return 0;
 }

 return 1 ;
    }

    side = 0;
    if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
 side = 1;



    P_UseSpecialLine (usething, in->d.line, side);


    return 0;
}
