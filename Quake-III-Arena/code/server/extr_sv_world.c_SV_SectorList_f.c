
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* entities; } ;
typedef TYPE_1__ worldSector_t ;
struct TYPE_5__ {struct TYPE_5__* nextEntityInWorldSector; } ;
typedef TYPE_2__ svEntity_t ;


 int AREA_NODES ;
 int Com_Printf (char*,int,int) ;
 TYPE_1__* sv_worldSectors ;

void SV_SectorList_f( void ) {
 int i, c;
 worldSector_t *sec;
 svEntity_t *ent;

 for ( i = 0 ; i < AREA_NODES ; i++ ) {
  sec = &sv_worldSectors[i];

  c = 0;
  for ( ent = sec->entities ; ent ; ent = ent->nextEntityInWorldSector ) {
   c++;
  }
  Com_Printf( "sector %i: %i entities\n", i, c );
 }
}
