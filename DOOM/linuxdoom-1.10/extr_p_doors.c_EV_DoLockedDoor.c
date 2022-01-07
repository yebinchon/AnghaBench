
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vldoor_e ;
struct TYPE_7__ {int message; int * cards; } ;
typedef TYPE_1__ player_t ;
struct TYPE_8__ {TYPE_1__* player; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_9__ {int special; } ;
typedef TYPE_3__ line_t ;


 int EV_DoDoor (TYPE_3__*,int ) ;
 int PD_BLUEO ;
 int PD_REDO ;
 int PD_YELLOWO ;
 int S_StartSound (int *,int ) ;
 size_t it_bluecard ;
 size_t it_blueskull ;
 size_t it_redcard ;
 size_t it_redskull ;
 size_t it_yellowcard ;
 size_t it_yellowskull ;
 int sfx_oof ;

int
EV_DoLockedDoor
( line_t* line,
  vldoor_e type,
  mobj_t* thing )
{
    player_t* p;

    p = thing->player;

    if (!p)
 return 0;

    switch(line->special)
    {
      case 99:
      case 133:
 if ( !p )
     return 0;
 if (!p->cards[it_bluecard] && !p->cards[it_blueskull])
 {
     p->message = PD_BLUEO;
     S_StartSound(((void*)0),sfx_oof);
     return 0;
 }
 break;

      case 134:
      case 135:
 if ( !p )
     return 0;
 if (!p->cards[it_redcard] && !p->cards[it_redskull])
 {
     p->message = PD_REDO;
     S_StartSound(((void*)0),sfx_oof);
     return 0;
 }
 break;

      case 136:
      case 137:
 if ( !p )
     return 0;
 if (!p->cards[it_yellowcard] &&
     !p->cards[it_yellowskull])
 {
     p->message = PD_YELLOWO;
     S_StartSound(((void*)0),sfx_oof);
     return 0;
 }
 break;
    }

    return EV_DoDoor(line,type);
}
