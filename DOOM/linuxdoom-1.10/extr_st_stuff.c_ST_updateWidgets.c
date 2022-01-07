
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t readyweapon; int* ammo; scalar_t__* frags; scalar_t__* cards; } ;
struct TYPE_5__ {int* num; size_t data; } ;
struct TYPE_4__ {size_t ammo; } ;


 int MAXPLAYERS ;
 int ST_updateFaceWidget () ;
 size_t am_noammo ;
 int consoleplayer ;
 scalar_t__ deathmatch ;
 int* keyboxes ;
 TYPE_3__* plyr ;
 int st_armson ;
 int st_chat ;
 scalar_t__ st_fragscount ;
 int st_fragson ;
 int st_msgcounter ;
 int st_notdeathmatch ;
 int st_oldchat ;
 scalar_t__ st_statusbaron ;
 TYPE_2__ w_ready ;
 TYPE_1__* weaponinfo ;

void ST_updateWidgets(void)
{
    static int largeammo = 1994;
    int i;




    if (weaponinfo[plyr->readyweapon].ammo == am_noammo)
 w_ready.num = &largeammo;
    else
 w_ready.num = &plyr->ammo[weaponinfo[plyr->readyweapon].ammo];
    w_ready.data = plyr->readyweapon;







    for (i=0;i<3;i++)
    {
 keyboxes[i] = plyr->cards[i] ? i : -1;

 if (plyr->cards[i+3])
     keyboxes[i] = i+3;
    }


    ST_updateFaceWidget();


    st_notdeathmatch = !deathmatch;


    st_armson = st_statusbaron && !deathmatch;


    st_fragson = deathmatch && st_statusbaron;
    st_fragscount = 0;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (i != consoleplayer)
     st_fragscount += plyr->frags[i];
 else
     st_fragscount -= plyr->frags[i];
    }


    if (!--st_msgcounter)
 st_chat = st_oldchat;

}
