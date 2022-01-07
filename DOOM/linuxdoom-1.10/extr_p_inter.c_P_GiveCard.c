
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cards; int bonuscount; } ;
typedef TYPE_1__ player_t ;
typedef size_t card_t ;


 int BONUSADD ;

void
P_GiveCard
( player_t* player,
  card_t card )
{
    if (player->cards[card])
 return;

    player->bonuscount = BONUSADD;
    player->cards[card] = 1;
}
