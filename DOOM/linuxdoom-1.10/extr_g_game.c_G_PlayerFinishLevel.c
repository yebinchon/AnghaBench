
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bonuscount; scalar_t__ damagecount; scalar_t__ fixedcolormap; scalar_t__ extralight; TYPE_1__* mo; int cards; int powers; } ;
typedef TYPE_2__ player_t ;
struct TYPE_4__ {int flags; } ;


 int MF_SHADOW ;
 int memset (int ,int ,int) ;
 TYPE_2__* players ;

void G_PlayerFinishLevel (int player)
{
    player_t* p;

    p = &players[player];

    memset (p->powers, 0, sizeof (p->powers));
    memset (p->cards, 0, sizeof (p->cards));
    p->mo->flags &= ~MF_SHADOW;
    p->extralight = 0;
    p->fixedcolormap = 0;
    p->damagecount = 0;
    p->bonuscount = 0;
}
