
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playerState_t ;
typedef int gentity_t ;


 int G_LOCATE_GAME_DATA ;
 int syscall (int ,int *,int,int,int *,int) ;

void trap_LocateGameData( gentity_t *gEnts, int numGEntities, int sizeofGEntity_t,
       playerState_t *clients, int sizeofGClient ) {
 syscall( G_LOCATE_GAME_DATA, gEnts, numGEntities, sizeofGEntity_t, clients, sizeofGClient );
}
