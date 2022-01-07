
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ numbrushes; int firstbrush; } ;


 int ClearBounds (int ,int ) ;
 int HL_CreateMapBrushes (TYPE_1__*,int) ;
 int HL_LoadBSPFile (char*,int,int) ;
 int HL_ParseEntities () ;
 int Log_Print (char*) ;
 int MAPTYPE_HALFLIFE ;
 char* ValueForKey (TYPE_1__*,char*) ;
 int atoi (char*) ;
 TYPE_1__* entities ;
 int hl_numclipbrushes ;
 scalar_t__ lessbrushes ;
 int loadedmaptype ;
 int map_maxs ;
 int map_mins ;
 int num_entities ;
 int nummapbrushes ;
 int qprintf (char*,...) ;
 int strcmp (char*,char*) ;

void HL_LoadMapFromBSP(char *filename, int offset, int length)
{
 int i, modelnum;
 char *model, *classname;

 Log_Print("-- HL_LoadMapFromBSP --\n");

 loadedmaptype = MAPTYPE_HALFLIFE;

 qprintf("loading map from %s at %d\n", filename, offset);

 HL_LoadBSPFile(filename, offset, length);

 hl_numclipbrushes = 0;

 HL_ParseEntities();

 ClearBounds(map_mins, map_maxs);

 qprintf("creating Half-Life brushes\n");
 if (lessbrushes) qprintf("creating minimum number of brushes\n");
 else qprintf("placing textures correctly\n");

 for (i = 0; i < num_entities; i++)
 {
  entities[i].firstbrush = nummapbrushes;
  entities[i].numbrushes = 0;

  classname = ValueForKey(&entities[i], "classname");
  if (classname && !strcmp(classname, "worldspawn"))
  {
   modelnum = 0;
  }
  else
  {

   model = ValueForKey(&entities[i], "model");
   if (!model || *model != '*') continue;
   model++;
   modelnum = atoi(model);
  }

  HL_CreateMapBrushes(&entities[i], modelnum);
 }

 qprintf("%5d map brushes\n", nummapbrushes);
 qprintf("%5d clip brushes\n", hl_numclipbrushes);
}
