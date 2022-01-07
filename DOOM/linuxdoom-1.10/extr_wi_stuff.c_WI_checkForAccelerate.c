
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buttons; } ;
struct TYPE_5__ {int attackdown; int usedown; TYPE_1__ cmd; } ;
typedef TYPE_2__ player_t ;


 int BT_ATTACK ;
 int BT_USE ;
 int MAXPLAYERS ;
 int acceleratestage ;
 scalar_t__* playeringame ;
 TYPE_2__* players ;

void WI_checkForAccelerate(void)
{
    int i;
    player_t *player;


    for (i=0, player = players ; i<MAXPLAYERS ; i++, player++)
    {
 if (playeringame[i])
 {
     if (player->cmd.buttons & BT_ATTACK)
     {
  if (!player->attackdown)
      acceleratestage = 1;
  player->attackdown = 1;
     }
     else
  player->attackdown = 0;
     if (player->cmd.buttons & BT_USE)
     {
  if (!player->usedown)
      acceleratestage = 1;
  player->usedown = 1;
     }
     else
  player->usedown = 0;
 }
    }
}
