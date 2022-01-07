
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean ;


 int ST_diffDraw () ;
 int ST_doPaletteStuff () ;
 int ST_doRefresh () ;
 scalar_t__ automapactive ;
 int st_firsttime ;
 int st_statusbaron ;

void ST_Drawer (boolean fullscreen, boolean refresh)
{

    st_statusbaron = (!fullscreen) || automapactive;
    st_firsttime = st_firsttime || refresh;


    ST_doPaletteStuff();


    if (st_firsttime) ST_doRefresh();

    else ST_diffDraw();

}
