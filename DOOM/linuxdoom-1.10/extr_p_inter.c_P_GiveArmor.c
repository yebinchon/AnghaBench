
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int armorpoints; int armortype; } ;
typedef TYPE_1__ player_t ;
typedef int boolean ;



boolean
P_GiveArmor
( player_t* player,
  int armortype )
{
    int hits;

    hits = armortype*100;
    if (player->armorpoints >= hits)
 return 0;

    player->armortype = armortype;
    player->armorpoints = hits;

    return 1;
}
