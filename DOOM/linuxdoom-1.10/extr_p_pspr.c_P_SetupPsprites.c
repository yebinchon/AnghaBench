
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int readyweapon; int pendingweapon; TYPE_1__* psprites; } ;
typedef TYPE_2__ player_t ;
struct TYPE_5__ {int * state; } ;


 int NUMPSPRITES ;
 int P_BringUpWeapon (TYPE_2__*) ;

void P_SetupPsprites (player_t* player)
{
    int i;


    for (i=0 ; i<NUMPSPRITES ; i++)
 player->psprites[i].state = ((void*)0);


    player->pendingweapon = player->readyweapon;
    P_BringUpWeapon (player);
}
