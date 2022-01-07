
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ numbrushes; int firstbrush; } ;


 int ClearBounds (int ,int ) ;
 int Log_Print (char*) ;
 int MAPTYPE_QUAKE1 ;
 int Q1_CreateMapBrushes (TYPE_1__*,int) ;
 int Q1_LoadBSPFile (char*,int,int) ;
 int Q1_ParseEntities () ;
 char* ValueForKey (TYPE_1__*,char*) ;
 int atoi (char*) ;
 TYPE_1__* entities ;
 scalar_t__ lessbrushes ;
 int loadedmaptype ;
 int map_maxs ;
 int map_mins ;
 int num_entities ;
 int nummapbrushes ;
 int q1_numclipbrushes ;
 int qprintf (char*,...) ;
 int strcmp (char*,char*) ;

void Q1_LoadMapFromBSP(char *filename, int offset, int length)
{
 int i, modelnum;
 char *model, *classname;

 Log_Print("-- Q1_LoadMapFromBSP --\n");

 loadedmaptype = MAPTYPE_QUAKE1;

 qprintf("loading map from %s at %d\n", filename, offset);

 Q1_LoadBSPFile(filename, offset, length);

 q1_numclipbrushes = 0;



 Q1_ParseEntities();

 ClearBounds(map_mins, map_maxs);

 qprintf("creating Quake1 brushes\n");
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

  Q1_CreateMapBrushes(&entities[i], modelnum);
 }

 qprintf("%5d map brushes\n", nummapbrushes);
 qprintf("%5d clip brushes\n", q1_numclipbrushes);
}
