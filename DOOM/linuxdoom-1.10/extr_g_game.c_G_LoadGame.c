
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ga_loadgame ;
 int gameaction ;
 int savename ;
 int strcpy (int ,char*) ;

void G_LoadGame (char* name)
{
    strcpy (savename, name);
    gameaction = ga_loadgame;
}
