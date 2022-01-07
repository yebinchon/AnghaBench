
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int script_t ;
struct TYPE_4__ {int numbrushes; } ;
struct TYPE_3__ {int* mins; int* maxs; } ;


 int AddPointToBounds (int*,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int FreeScript (int *) ;
 int * LoadScriptFile (char*) ;
 int Log_Print (char*,...) ;
 int MAPTYPE_QUAKE2 ;
 int PrintMapInfo () ;
 int Q2_CreateMapTexinfo () ;
 scalar_t__ Q2_ParseMapEntity (int *) ;
 int ResetMapLoading () ;
 int SCFL_NOSTRINGESCAPECHARS ;
 int SCFL_NOSTRINGWHITESPACES ;
 int SCFL_PRIMITIVE ;
 int SetScriptFlags (int *,int) ;
 TYPE_2__* entities ;
 int loadedmaptype ;
 int map_maxs ;
 int map_mins ;
 TYPE_1__* mapbrushes ;
 scalar_t__ num_entities ;
 scalar_t__ nummapbrushsides ;

void Q2_LoadMapFile(char *filename)
{
 int i;
 script_t *script;

 Log_Print("-- Q2_LoadMapFile --\n");







 script = LoadScriptFile(filename);
 if (!script)
 {
  Log_Print("couldn't open %s\n", filename);
  return;
 }

 SetScriptFlags(script, SCFL_NOSTRINGWHITESPACES |
         SCFL_NOSTRINGESCAPECHARS |
         SCFL_PRIMITIVE);

 nummapbrushsides = 0;
 num_entities = 0;

 while (Q2_ParseMapEntity(script))
 {
 }

 ClearBounds (map_mins, map_maxs);
 for (i=0 ; i<entities[0].numbrushes ; i++)
 {
  if (mapbrushes[i].mins[0] > 4096)
   continue;
  AddPointToBounds (mapbrushes[i].mins, map_mins, map_maxs);
  AddPointToBounds (mapbrushes[i].maxs, map_mins, map_maxs);
 }

 PrintMapInfo();


 FreeScript(script);


 Q2_CreateMapTexinfo();
}
