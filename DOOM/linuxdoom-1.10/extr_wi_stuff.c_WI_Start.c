
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbstartstruct_t ;


 int WI_initDeathmatchStats () ;
 int WI_initNetgameStats () ;
 int WI_initStats () ;
 int WI_initVariables (int *) ;
 int WI_loadData () ;
 scalar_t__ deathmatch ;
 scalar_t__ netgame ;

void WI_Start(wbstartstruct_t* wbstartstruct)
{

    WI_initVariables(wbstartstruct);
    WI_loadData();

    if (deathmatch)
 WI_initDeathmatchStats();
    else if (netgame)
 WI_initNetgameStats();
    else
 WI_initStats();
}
