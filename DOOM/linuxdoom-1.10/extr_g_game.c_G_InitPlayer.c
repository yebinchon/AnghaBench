
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int player_t ;


 int G_PlayerReborn (int) ;
 int * players ;

void G_InitPlayer (int player)
{
    player_t* p;


    p = &players[player];


    G_PlayerReborn (player);

}
