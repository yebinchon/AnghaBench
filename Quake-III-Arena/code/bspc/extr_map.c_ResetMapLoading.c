
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int side_t ;
typedef int plane_t ;
typedef int mapbrush_t ;
typedef int map_texinfo_t ;
struct TYPE_11__ {struct TYPE_11__* value; struct TYPE_11__* key; struct TYPE_11__* next; } ;
typedef TYPE_1__ epair_t ;
typedef int entity_t ;
typedef int brush_texture_t ;
struct TYPE_12__ {TYPE_1__* epairs; scalar_t__ winding; } ;


 int FreeMemory (TYPE_1__*) ;
 int FreeWinding (scalar_t__) ;
 int MAX_MAPFILE_BRUSHES ;
 int MAX_MAPFILE_BRUSHSIDES ;
 int MAX_MAPFILE_PLANES ;
 int MAX_MAPFILE_TEXINFO ;
 int MAX_MAP_ENTITIES ;
 int PLANE_HASHES ;
 int Q2_ResetMapLoading () ;
 int Sin_ResetMapLoading () ;
 int VectorClear (int ) ;
 TYPE_2__* brushsides ;
 scalar_t__ c_areaportals ;
 scalar_t__ c_boxbevels ;
 scalar_t__ c_clipbrushes ;
 scalar_t__ c_edgebevels ;
 scalar_t__ c_writtenbrushes ;
 TYPE_2__* entities ;
 int map_maxs ;
 int map_mins ;
 scalar_t__ map_numtexinfo ;
 TYPE_2__* map_texinfo ;
 TYPE_2__* mapbrushes ;
 TYPE_2__* mapplanes ;
 int memset (TYPE_2__*,int ,int) ;
 int num_entities ;
 scalar_t__ nummapbrushes ;
 int nummapbrushsides ;
 scalar_t__ nummapplanes ;
 TYPE_2__* planehash ;
 TYPE_2__* side_brushtextures ;

void ResetMapLoading(void)
{
 int i;
 epair_t *ep, *nextep;

 Q2_ResetMapLoading();
 Sin_ResetMapLoading();


 for (i = 0; i < nummapbrushsides; i++)
 {
  if (brushsides[i].winding)
  {
   FreeWinding(brushsides[i].winding);
  }
 }


 nummapbrushes = 0;
 memset(mapbrushes, 0, MAX_MAPFILE_BRUSHES * sizeof(mapbrush_t));

 nummapbrushsides = 0;
 memset(brushsides, 0, MAX_MAPFILE_BRUSHSIDES * sizeof(side_t));
 memset(side_brushtextures, 0, MAX_MAPFILE_BRUSHSIDES * sizeof(brush_texture_t));

 nummapplanes = 0;
 memset(mapplanes, 0, MAX_MAPFILE_PLANES * sizeof(plane_t));

 memset(planehash, 0, PLANE_HASHES * sizeof(plane_t *));

 memset(map_texinfo, 0, MAX_MAPFILE_TEXINFO * sizeof(map_texinfo_t));
 map_numtexinfo = 0;

 VectorClear(map_mins);
 VectorClear(map_maxs);

 c_boxbevels = 0;
 c_edgebevels = 0;
 c_areaportals = 0;
 c_clipbrushes = 0;
 c_writtenbrushes = 0;

 for (i = 0; i < num_entities; i++)
 {
  for (ep = entities[i].epairs; ep; ep = nextep)
  {
   nextep = ep->next;
   FreeMemory(ep->key);
   FreeMemory(ep->value);
   FreeMemory(ep);
  }
 }
 num_entities = 0;
 memset(entities, 0, MAX_MAP_ENTITIES * sizeof(entity_t));
}
