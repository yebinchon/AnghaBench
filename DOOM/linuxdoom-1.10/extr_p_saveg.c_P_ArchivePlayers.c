
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int state_t ;
struct TYPE_5__ {TYPE_1__* psprites; } ;
typedef TYPE_2__ player_t ;
struct TYPE_4__ {int * state; } ;


 int MAXPLAYERS ;
 int NUMPSPRITES ;
 int PADSAVEP () ;
 int memcpy (TYPE_2__*,int *,int) ;
 int * playeringame ;
 int * players ;
 scalar_t__ save_p ;
 int states ;

void P_ArchivePlayers (void)
{
    int i;
    int j;
    player_t* dest;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (!playeringame[i])
     continue;

 PADSAVEP();

 dest = (player_t *)save_p;
 memcpy (dest,&players[i],sizeof(player_t));
 save_p += sizeof(player_t);
 for (j=0 ; j<NUMPSPRITES ; j++)
 {
     if (dest->psprites[j].state)
     {
  dest->psprites[j].state
      = (state_t *)(dest->psprites[j].state-states);
     }
 }
    }
}
