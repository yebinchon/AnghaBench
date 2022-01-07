
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ST_drawWidgets (int) ;
 int ST_refreshBackground () ;
 int st_firsttime ;

void ST_doRefresh(void)
{

    st_firsttime = 0;


    ST_refreshBackground();


    ST_drawWidgets(1);

}
