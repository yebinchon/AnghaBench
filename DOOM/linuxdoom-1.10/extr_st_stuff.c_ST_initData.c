
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * weaponowned; } ;


 int FirstPersonState ;
 int NUMWEAPONS ;
 int STlib_init () ;
 int StartChatState ;
 size_t consoleplayer ;
 int* keyboxes ;
 int * oldweaponsowned ;
 TYPE_1__* players ;
 TYPE_1__* plyr ;
 int st_chat ;
 int st_chatstate ;
 scalar_t__ st_clock ;
 int st_cursoron ;
 scalar_t__ st_faceindex ;
 int st_firsttime ;
 int st_gamestate ;
 int st_oldchat ;
 int st_oldhealth ;
 int st_palette ;
 int st_statusbaron ;

void ST_initData(void)
{

    int i;

    st_firsttime = 1;
    plyr = &players[consoleplayer];

    st_clock = 0;
    st_chatstate = StartChatState;
    st_gamestate = FirstPersonState;

    st_statusbaron = 1;
    st_oldchat = st_chat = 0;
    st_cursoron = 0;

    st_faceindex = 0;
    st_palette = -1;

    st_oldhealth = -1;

    for (i=0;i<NUMWEAPONS;i++)
 oldweaponsowned[i] = plyr->weaponowned[i];

    for (i=0;i<3;i++)
 keyboxes[i] = -1;

    STlib_init();

}
