
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_1__ vec3_t ;
struct quakefile_s {int filename; } ;
struct TYPE_6__ {int numbrushes; } ;
struct TYPE_5__ {scalar_t__ numsides; int maxs; int mins; } ;


 int AAS_CreateCurveBrushes () ;
 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int Log_Print (char*,...) ;
 int MAPTYPE_QUAKE3 ;
 int MAX_MAPFILE_BRUSHES ;
 int Q3_LoadBSPFile (struct quakefile_s*) ;
 int Q3_ParseBSPEntity (int) ;
 int Q3_ParseEntities () ;
 int* brushmodelnumbers ;
 TYPE_3__* entities ;
 int loadedmaptype ;
 int map_maxs ;
 int map_mins ;
 TYPE_2__* mapbrushes ;
 int num_entities ;
 scalar_t__ nummapbrushsides ;

void Q3_LoadMapFromBSP(struct quakefile_s *qf)
{
 int i;
 vec3_t mins = {-1,-1,-1}, maxs = {1, 1, 1};

 Log_Print("-- Q3_LoadMapFromBSP --\n");

 loadedmaptype = MAPTYPE_QUAKE3;

 Log_Print("Loading map from %s...\n", qf->filename);

 Q3_LoadBSPFile(qf);




 for (i = 0; i < MAX_MAPFILE_BRUSHES; i++)
  brushmodelnumbers[i] = -1;

 nummapbrushsides = 0;
 num_entities = 0;

 Q3_ParseEntities();

 for (i = 0; i < num_entities; i++)
 {
  Q3_ParseBSPEntity(i);
 }

 AAS_CreateCurveBrushes();

 ClearBounds(map_mins, map_maxs);
 for (i = 0; i < entities[0].numbrushes; i++)
 {
  if (mapbrushes[i].numsides <= 0)
   continue;
  AddPointToBounds (mapbrushes[i].mins, map_mins, map_maxs);
  AddPointToBounds (mapbrushes[i].maxs, map_mins, map_maxs);
 }
}
