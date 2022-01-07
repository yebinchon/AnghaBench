
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* frags; int killcount; int itemcount; int secretcount; int usedown; int attackdown; size_t readyweapon; size_t pendingweapon; int* weaponowned; int* ammo; int * maxammo; int health; int playerstate; } ;
typedef TYPE_1__ player_t ;
typedef int frags ;


 int MAXHEALTH ;
 int MAXPLAYERS ;
 int NUMAMMO ;
 int PST_LIVE ;
 size_t am_clip ;
 int * maxammo ;
 int memcpy (int*,int*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* players ;
 size_t wp_fist ;
 size_t wp_pistol ;

void G_PlayerReborn (int player)
{
    player_t* p;
    int i;
    int frags[MAXPLAYERS];
    int killcount;
    int itemcount;
    int secretcount;

    memcpy (frags,players[player].frags,sizeof(frags));
    killcount = players[player].killcount;
    itemcount = players[player].itemcount;
    secretcount = players[player].secretcount;

    p = &players[player];
    memset (p, 0, sizeof(*p));

    memcpy (players[player].frags, frags, sizeof(players[player].frags));
    players[player].killcount = killcount;
    players[player].itemcount = itemcount;
    players[player].secretcount = secretcount;

    p->usedown = p->attackdown = 1;
    p->playerstate = PST_LIVE;
    p->health = MAXHEALTH;
    p->readyweapon = p->pendingweapon = wp_pistol;
    p->weaponowned[wp_fist] = 1;
    p->weaponowned[wp_pistol] = 1;
    p->ammo[am_clip] = 50;

    for (i=0 ; i<NUMAMMO ; i++)
 p->maxammo[i] = maxammo[i];

}
