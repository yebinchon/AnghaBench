
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numbrushes; } ;
struct TYPE_3__ {int* mins; int* maxs; } ;


 int AddPointToBounds (int*,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int Log_Print (char*,...) ;
 int MAPTYPE_SIN ;
 int MAX_MAPFILE_BRUSHES ;
 int Sin_CreateMapTexinfo () ;
 int Sin_LoadBSPFile (char*,int,int) ;
 int Sin_ParseBSPEntity (int) ;
 int Sin_ParseEntities () ;
 int* brushmodelnumbers ;
 TYPE_2__* entities ;
 int loadedmaptype ;
 int map_maxs ;
 int map_mins ;
 TYPE_1__* mapbrushes ;
 int num_entities ;
 scalar_t__ nummapbrushsides ;

void Sin_LoadMapFromBSP(char *filename, int offset, int length)
{
 int i;

 Log_Print("-- Sin_LoadMapFromBSP --\n");

 loadedmaptype = MAPTYPE_SIN;

 Log_Print("Loading map from %s...\n", filename);

 Sin_LoadBSPFile(filename, offset, length);




 for (i = 0; i < MAX_MAPFILE_BRUSHES; i++)
  brushmodelnumbers[i] = -1;

 nummapbrushsides = 0;
 num_entities = 0;

 Sin_ParseEntities();

 for (i = 0; i < num_entities; i++)
 {
  Sin_ParseBSPEntity(i);
 }


 ClearBounds(map_mins, map_maxs);
 for (i = 0; i < entities[0].numbrushes; i++)
 {
  if (mapbrushes[i].mins[0] > 4096)
   continue;
  AddPointToBounds (mapbrushes[i].mins, map_mins, map_maxs);
  AddPointToBounds (mapbrushes[i].maxs, map_mins, map_maxs);
 }

 Sin_CreateMapTexinfo();
}
