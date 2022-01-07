
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_Printf (char*,int ,int ) ;
 int POOLSIZE ;
 int allocPoint ;

void Svcmd_GameMem_f( void ) {
 G_Printf( "Game memory status: %i out of %i bytes allocated\n", allocPoint, POOLSIZE );
}
