
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int texinfo; int planenum; int surf; int flags; int contents; int * winding; int * original; } ;
typedef TYPE_1__ side_t ;
struct TYPE_10__ {int numsides; TYPE_1__* original_sides; int contents; scalar_t__ brushnum; int entitynum; } ;
typedef TYPE_2__ mapbrush_t ;
struct TYPE_11__ {int numbrushes; scalar_t__ firstbrush; } ;
typedef TYPE_3__ entity_t ;


 int Error (char*) ;
 size_t MAX_MAPFILE_BRUSHES ;
 size_t MAX_MAPFILE_BRUSHSIDES ;
 TYPE_1__* brushsides ;
 TYPE_2__* mapbrushes ;
 size_t nummapbrushes ;
 size_t nummapbrushsides ;

mapbrush_t *AAS_CopyMapBrush(mapbrush_t *brush, entity_t *mapent)
{
 int n;
 mapbrush_t *newbrush;
 side_t *side, *newside;

 if (nummapbrushes >= MAX_MAPFILE_BRUSHES)
  Error ("MAX_MAPFILE_BRUSHES");

 newbrush = &mapbrushes[nummapbrushes];
 newbrush->original_sides = &brushsides[nummapbrushsides];
 newbrush->entitynum = brush->entitynum;
 newbrush->brushnum = nummapbrushes - mapent->firstbrush;
 newbrush->numsides = brush->numsides;
 newbrush->contents = brush->contents;


 for (n = 0; n < brush->numsides; n++)
 {
  if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
   Error ("MAX_MAPFILE_BRUSHSIDES");
  side = brush->original_sides + n;

  newside = newbrush->original_sides + n;
  newside->original = ((void*)0);
  newside->winding = ((void*)0);
  newside->contents = side->contents;
  newside->flags = side->flags;
  newside->surf = side->surf;
  newside->planenum = side->planenum;
  newside->texinfo = side->texinfo;
  nummapbrushsides++;
 }

 nummapbrushes++;
 mapent->numbrushes++;
 return newbrush;
}
