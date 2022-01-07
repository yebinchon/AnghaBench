
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean ;


 int STlib_updateBinIcon (int *,int ) ;
 int STlib_updateMultIcon (int *,int ) ;
 int STlib_updateNum (int *,int ) ;
 int STlib_updatePercent (int *,int ) ;
 scalar_t__ deathmatch ;
 int st_armson ;
 int st_fragson ;
 scalar_t__ st_statusbaron ;
 int * w_ammo ;
 int w_armor ;
 int * w_arms ;
 int w_armsbg ;
 int w_faces ;
 int w_frags ;
 int w_health ;
 int * w_keyboxes ;
 int * w_maxammo ;
 int w_ready ;

void ST_drawWidgets(boolean refresh)
{
    int i;


    st_armson = st_statusbaron && !deathmatch;


    st_fragson = deathmatch && st_statusbaron;

    STlib_updateNum(&w_ready, refresh);

    for (i=0;i<4;i++)
    {
 STlib_updateNum(&w_ammo[i], refresh);
 STlib_updateNum(&w_maxammo[i], refresh);
    }

    STlib_updatePercent(&w_health, refresh);
    STlib_updatePercent(&w_armor, refresh);

    STlib_updateBinIcon(&w_armsbg, refresh);

    for (i=0;i<6;i++)
 STlib_updateMultIcon(&w_arms[i], refresh);

    STlib_updateMultIcon(&w_faces, refresh);

    for (i=0;i<3;i++)
 STlib_updateMultIcon(&w_keyboxes[i], refresh);

    STlib_updateNum(&w_frags, refresh);

}
