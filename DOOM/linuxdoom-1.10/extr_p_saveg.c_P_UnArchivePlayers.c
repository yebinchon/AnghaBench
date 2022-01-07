
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int player_t ;
struct TYPE_5__ {TYPE_1__* psprites; int * attacker; int * message; int * mo; } ;
struct TYPE_4__ {int * state; } ;


 int MAXPLAYERS ;
 int NUMPSPRITES ;
 int PADSAVEP () ;
 int memcpy (TYPE_2__*,int,int) ;
 int * playeringame ;
 TYPE_2__* players ;
 int save_p ;
 int * states ;

void P_UnArchivePlayers (void)
{
    int i;
    int j;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (!playeringame[i])
     continue;

 PADSAVEP();

 memcpy (&players[i],save_p, sizeof(player_t));
 save_p += sizeof(player_t);


 players[i].mo = ((void*)0);
 players[i].message = ((void*)0);
 players[i].attacker = ((void*)0);

 for (j=0 ; j<NUMPSPRITES ; j++)
 {
     if (players[i]. psprites[j].state)
     {
  players[i]. psprites[j].state
      = &states[ (int)players[i].psprites[j].state ];
     }
 }
    }
}
