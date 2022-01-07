
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t type; } ;
struct TYPE_6__ {size_t seestate; } ;
struct TYPE_5__ {int tics; } ;


 int S_ChangeMusic (int ,int) ;
 int castattacking ;
 int castdeath ;
 scalar_t__ castframes ;
 size_t castnum ;
 scalar_t__ castonmelee ;
 TYPE_4__* castorder ;
 TYPE_1__* caststate ;
 int casttics ;
 int finalestage ;
 TYPE_2__* mobjinfo ;
 int mus_evil ;
 TYPE_1__* states ;
 int wipegamestate ;

void F_StartCast (void)
{
    wipegamestate = -1;
    castnum = 0;
    caststate = &states[mobjinfo[castorder[castnum].type].seestate];
    casttics = caststate->tics;
    castdeath = 0;
    finalestage = 2;
    castframes = 0;
    castonmelee = 0;
    castattacking = 0;
    S_ChangeMusic(mus_evil, 1);
}
