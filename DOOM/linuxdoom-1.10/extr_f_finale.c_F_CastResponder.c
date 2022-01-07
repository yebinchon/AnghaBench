
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ event_t ;
typedef int boolean ;
struct TYPE_10__ {size_t type; } ;
struct TYPE_9__ {size_t deathstate; scalar_t__ deathsound; } ;
struct TYPE_8__ {int tics; } ;


 int S_StartSound (int *,scalar_t__) ;
 int castattacking ;
 int castdeath ;
 scalar_t__ castframes ;
 size_t castnum ;
 TYPE_5__* castorder ;
 TYPE_2__* caststate ;
 int casttics ;
 scalar_t__ ev_keydown ;
 TYPE_3__* mobjinfo ;
 TYPE_2__* states ;

boolean F_CastResponder (event_t* ev)
{
    if (ev->type != ev_keydown)
 return 0;

    if (castdeath)
 return 1;


    castdeath = 1;
    caststate = &states[mobjinfo[castorder[castnum].type].deathstate];
    casttics = caststate->tics;
    castframes = 0;
    castattacking = 0;
    if (mobjinfo[castorder[castnum].type].deathsound)
 S_StartSound (((void*)0), mobjinfo[castorder[castnum].type].deathsound);

    return 1;
}
