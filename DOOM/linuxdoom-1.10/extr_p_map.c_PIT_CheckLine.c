
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* bbox; int flags; scalar_t__ special; int backsector; } ;
typedef TYPE_1__ line_t ;
typedef int boolean ;
struct TYPE_9__ {int flags; int player; } ;


 size_t BOXBOTTOM ;
 size_t BOXLEFT ;
 size_t BOXRIGHT ;
 size_t BOXTOP ;
 int MF_MISSILE ;
 int ML_BLOCKING ;
 int ML_BLOCKMONSTERS ;
 int P_BoxOnLineSide (scalar_t__*,TYPE_1__*) ;
 int P_LineOpening (TYPE_1__*) ;
 TYPE_1__* ceilingline ;
 scalar_t__ lowfloor ;
 size_t numspechit ;
 scalar_t__ openbottom ;
 scalar_t__ opentop ;
 TYPE_1__** spechit ;
 scalar_t__* tmbbox ;
 scalar_t__ tmceilingz ;
 scalar_t__ tmdropoffz ;
 scalar_t__ tmfloorz ;
 TYPE_2__* tmthing ;

boolean PIT_CheckLine (line_t* ld)
{
    if (tmbbox[BOXRIGHT] <= ld->bbox[BOXLEFT]
 || tmbbox[BOXLEFT] >= ld->bbox[BOXRIGHT]
 || tmbbox[BOXTOP] <= ld->bbox[BOXBOTTOM]
 || tmbbox[BOXBOTTOM] >= ld->bbox[BOXTOP] )
 return 1;

    if (P_BoxOnLineSide (tmbbox, ld) != -1)
 return 1;
    if (!ld->backsector)
 return 0;

    if (!(tmthing->flags & MF_MISSILE) )
    {
 if ( ld->flags & ML_BLOCKING )
     return 0;

 if ( !tmthing->player && ld->flags & ML_BLOCKMONSTERS )
     return 0;
    }


    P_LineOpening (ld);


    if (opentop < tmceilingz)
    {
 tmceilingz = opentop;
 ceilingline = ld;
    }

    if (openbottom > tmfloorz)
 tmfloorz = openbottom;

    if (lowfloor < tmdropoffz)
 tmdropoffz = lowfloor;


    if (ld->special)
    {
 spechit[numspechit] = ld;
 numspechit++;
    }

    return 1;
}
