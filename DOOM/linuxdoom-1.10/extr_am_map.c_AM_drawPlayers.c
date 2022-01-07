
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mo; scalar_t__* powers; } ;
typedef TYPE_2__ player_t ;
struct TYPE_5__ {int y; int x; int angle; } ;


 int AM_drawLineCharacter (int ,int ,int ,int ,int,int ,int ) ;



 int MAXPLAYERS ;
 int NUMCHEATPLYRLINES ;
 int NUMPLYRLINES ;

 int WHITE ;
 int cheat_player_arrow ;
 scalar_t__ cheating ;
 scalar_t__ deathmatch ;
 int netgame ;
 int player_arrow ;
 int * playeringame ;
 TYPE_2__* players ;
 TYPE_2__* plr ;
 size_t pw_invisibility ;
 int singledemo ;

void AM_drawPlayers(void)
{
    int i;
    player_t* p;
    static int their_colors[] = { 129, 130, 131, 128 };
    int their_color = -1;
    int color;

    if (!netgame)
    {
 if (cheating)
     AM_drawLineCharacter
  (cheat_player_arrow, NUMCHEATPLYRLINES, 0,
   plr->mo->angle, WHITE, plr->mo->x, plr->mo->y);
 else
     AM_drawLineCharacter
  (player_arrow, NUMPLYRLINES, 0, plr->mo->angle,
   WHITE, plr->mo->x, plr->mo->y);
 return;
    }

    for (i=0;i<MAXPLAYERS;i++)
    {
 their_color++;
 p = &players[i];

 if ( (deathmatch && !singledemo) && p != plr)
     continue;

 if (!playeringame[i])
     continue;

 if (p->powers[pw_invisibility])
     color = 246;
 else
     color = their_colors[their_color];

 AM_drawLineCharacter
     (player_arrow, NUMPLYRLINES, 0, p->mo->angle,
      color, p->mo->x, p->mo->y);
    }

}
