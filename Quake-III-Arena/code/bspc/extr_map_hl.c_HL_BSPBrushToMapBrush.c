
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int texinfo; int flags; int planenum; scalar_t__ surf; int contents; } ;
typedef TYPE_2__ side_t ;
struct TYPE_16__ {int leafnum; int numsides; int contents; TYPE_2__* original_sides; scalar_t__ brushnum; TYPE_4__* entitynum; } ;
typedef TYPE_3__ mapbrush_t ;
struct TYPE_17__ {int numbrushes; scalar_t__ firstbrush; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_18__ {int numsides; int side; TYPE_1__* sides; } ;
typedef TYPE_5__ bspbrush_t ;
struct TYPE_14__ {int texinfo; int planenum; int winding; } ;


 int AAS_CreateMapBrushes (TYPE_3__*,TYPE_4__*,int) ;
 int AddBrushBevels (TYPE_3__*) ;
 int Error (char*) ;
 size_t MAX_MAPFILE_BRUSHES ;
 size_t MAX_MAPFILE_BRUSHSIDES ;
 int MakeBrushWindings (TYPE_3__*) ;
 int SFL_TEXTURED ;
 int TEXINFO_NODE ;
 TYPE_2__* brushsides ;
 scalar_t__ create_aas ;
 int entities ;
 int hl_numclipbrushes ;
 TYPE_3__* mapbrushes ;
 size_t nummapbrushes ;
 size_t nummapbrushsides ;

void HL_BSPBrushToMapBrush(bspbrush_t *bspbrush, entity_t *mapent)
{
 mapbrush_t *mapbrush;
 side_t *side;
 int i, besttexinfo;

 if (nummapbrushes >= MAX_MAPFILE_BRUSHES)
 Error ("nummapbrushes == MAX_MAPFILE_BRUSHES");

 mapbrush = &mapbrushes[nummapbrushes];
 mapbrush->original_sides = &brushsides[nummapbrushsides];
 mapbrush->entitynum = mapent - entities;
 mapbrush->brushnum = nummapbrushes - mapent->firstbrush;
 mapbrush->leafnum = -1;
 mapbrush->numsides = 0;

 besttexinfo = TEXINFO_NODE;
 for (i = 0; i < bspbrush->numsides; i++)
 {
  if (!bspbrush->sides[i].winding) continue;

  if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
   Error ("MAX_MAPFILE_BRUSHSIDES");
  side = &brushsides[nummapbrushsides];

  side->contents = bspbrush->side;
  side->surf = 0;
  side->planenum = bspbrush->sides[i].planenum;
  side->texinfo = bspbrush->sides[i].texinfo;
  if (side->texinfo != TEXINFO_NODE)
  {

   side->flags |= SFL_TEXTURED;
   besttexinfo = side->texinfo;
  }

  nummapbrushsides++;
  mapbrush->numsides++;
 }

 if (besttexinfo == TEXINFO_NODE)
 {
  mapbrush->numsides = 0;
  hl_numclipbrushes++;
  return;
 }

 for (i = 0; i < mapbrush->numsides; i++)
 {
  if (mapbrush->original_sides[i].texinfo == TEXINFO_NODE)
  {
   mapbrush->original_sides[i].texinfo = besttexinfo;
  }
 }

 mapbrush->contents = bspbrush->side;

 if (create_aas)
 {

  AAS_CreateMapBrushes(mapbrush, mapent, 1);
  return;
 }

 MakeBrushWindings(mapbrush);

 AddBrushBevels(mapbrush);

 nummapbrushes++;
 mapent->numbrushes++;
}
