
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int movecount; } ;
typedef TYPE_1__ mobj_t ;
typedef int boolean ;


 int P_Move (TYPE_1__*) ;
 int P_Random () ;

boolean P_TryWalk (mobj_t* actor)
{
    if (!P_Move (actor))
    {
 return 0;
    }

    actor->movecount = P_Random()&15;
    return 1;
}
