
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int flags; int contents; int surf; int planenum; int texinfo; } ;
typedef TYPE_1__ side_t ;
struct TYPE_22__ {int dist; int normal; } ;
typedef TYPE_2__ q3_dplane_t ;
struct TYPE_23__ {size_t shaderNum; size_t planeNum; } ;
typedef TYPE_3__ q3_dbrushside_t ;
struct TYPE_24__ {int numSides; int firstSide; size_t shaderNum; } ;
typedef TYPE_4__ q3_dbrush_t ;
struct TYPE_25__ {int numsides; int contents; TYPE_1__* original_sides; scalar_t__ brushnum; TYPE_6__* entitynum; int leafnum; } ;
typedef TYPE_5__ mapbrush_t ;
struct TYPE_26__ {int numbrushes; scalar_t__ firstbrush; } ;
typedef TYPE_6__ entity_t ;
struct TYPE_27__ {int contentFlags; int surfaceFlags; int shader; } ;


 int AAS_CreateMapBrushes (TYPE_5__*,TYPE_6__*,int) ;
 scalar_t__ BrushExists (TYPE_5__*) ;
 int CONTENTS_DETAIL ;
 int CONTENTS_FOG ;
 int CONTENTS_LADDER ;
 int CONTENTS_LAVA ;
 int CONTENTS_MONSTERCLIP ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_STRUCTURAL ;
 int CONTENTS_WATER ;
 int Error (char*) ;
 int FindFloatPlane (int ,int ) ;
 int Log_Print (char*,TYPE_6__*,scalar_t__) ;
 size_t MAX_MAPFILE_BRUSHES ;
 size_t MAX_MAPFILE_BRUSHSIDES ;
 int MakeBrushWindings (TYPE_5__*) ;
 int MarkBrushBevels (TYPE_5__*) ;
 int SFL_TEXTURED ;
 int SFL_VISIBLE ;
 int SURF_HINT ;
 int SURF_NODRAW ;
 int SURF_SKIP ;
 int TEXINFO_NODE ;
 TYPE_1__* brushsides ;
 int c_clipbrushes ;
 int c_squattbrushes ;
 scalar_t__ create_aas ;
 int * dbrushleafnums ;
 int entities ;
 TYPE_5__* mapbrushes ;
 scalar_t__ nodetail ;
 scalar_t__ nowater ;
 size_t nummapbrushes ;
 size_t nummapbrushsides ;
 TYPE_4__* q3_dbrushes ;
 TYPE_3__* q3_dbrushsides ;
 scalar_t__* q3_dbrushsidetextured ;
 TYPE_2__* q3_dplanes ;
 TYPE_7__* q3_dshaders ;
 scalar_t__ strstr (int ,char*) ;

void Q3_BSPBrushToMapBrush(q3_dbrush_t *bspbrush, entity_t *mapent)
{
 mapbrush_t *b;
 int i, k, n;
 side_t *side, *s2;
 int planenum;
 q3_dbrushside_t *bspbrushside;
 q3_dplane_t *bspplane;

 if (nummapbrushes >= MAX_MAPFILE_BRUSHES)
  Error ("nummapbrushes >= MAX_MAPFILE_BRUSHES");

 b = &mapbrushes[nummapbrushes];
 b->original_sides = &brushsides[nummapbrushsides];
 b->entitynum = mapent-entities;
 b->brushnum = nummapbrushes - mapent->firstbrush;
 b->leafnum = dbrushleafnums[bspbrush - q3_dbrushes];

 for (n = 0; n < bspbrush->numSides; n++)
 {

  bspbrushside = &q3_dbrushsides[bspbrush->firstSide + n];

  if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
  {
   Error ("MAX_MAPFILE_BRUSHSIDES");
  }

  side = &brushsides[nummapbrushsides];

  if (q3_dbrushsidetextured[bspbrush->firstSide + n]) side->flags |= SFL_TEXTURED|SFL_VISIBLE;
  else side->flags &= ~SFL_TEXTURED;



  if (bspbrushside->shaderNum < 0)
  {
   side->contents = 0;
   side->surf = 0;
  }
  else
  {
   side->contents = q3_dshaders[bspbrushside->shaderNum].contentFlags;
   side->surf = q3_dshaders[bspbrushside->shaderNum].surfaceFlags;
   if (strstr(q3_dshaders[bspbrushside->shaderNum].shader, "common/hint"))
   {

    side->surf |= SURF_HINT;
   }
  }

  if (side->surf & SURF_NODRAW)
  {
   side->flags |= SFL_TEXTURED|SFL_VISIBLE;
  }







  if (side->surf & (SURF_HINT|SURF_SKIP) )
  {
   side->contents = 0;

  }
  bspplane = &q3_dplanes[bspbrushside->planeNum];
  planenum = FindFloatPlane(bspplane->normal, bspplane->dist);







  for (k = 0; k < b->numsides; k++)
  {
   s2 = b->original_sides + k;



   if (s2->planenum == planenum)
   {
    Log_Print("Entity %i, Brush %i: duplicate plane\n"
     , b->entitynum, b->brushnum);
    break;
   }
   if ( s2->planenum == (planenum^1) )
   {
    Log_Print("Entity %i, Brush %i: mirrored plane\n"
     , b->entitynum, b->brushnum);
    break;
   }
  }
  if (k != b->numsides)
   continue;





  side = b->original_sides + b->numsides;

  side->planenum = planenum;
  nummapbrushsides++;
  b->numsides++;
 }


 b->contents = q3_dshaders[bspbrush->shaderNum].contentFlags;
 b->contents &= ~(CONTENTS_LADDER|CONTENTS_FOG|CONTENTS_STRUCTURAL);



 if (BrushExists(b))
 {
  c_squattbrushes++;
  b->numsides = 0;
  return;
 }


 if (create_aas)
 {

  AAS_CreateMapBrushes(b, mapent, 0);
  return;
 }


 if (nodetail && (b->contents & CONTENTS_DETAIL) )
 {
  b->numsides = 0;
  return;
 }


 if (nowater && (b->contents & (CONTENTS_LAVA | CONTENTS_SLIME | CONTENTS_WATER)) )
 {
  b->numsides = 0;
  return;
 }


 MakeBrushWindings(b);


 MarkBrushBevels(b);



 if (b->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
 {
   c_clipbrushes++;
  for (i = 0; i < b->numsides; i++)
   b->original_sides[i].texinfo = TEXINFO_NODE;
 }
 nummapbrushes++;
 mapent->numbrushes++;
}
