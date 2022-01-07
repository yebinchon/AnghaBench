
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int contents; int leafnum; scalar_t__ expansionbbox; scalar_t__ numsides; } ;
typedef TYPE_2__ mapbrush_t ;
struct TYPE_21__ {int numbrushes; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_22__ {int numbboxes; TYPE_1__* bboxes; } ;
struct TYPE_19__ {scalar_t__ presencetype; int maxs; int mins; } ;


 TYPE_2__* AAS_CopyMapBrush (TYPE_2__*,TYPE_3__*) ;
 int AAS_ExpandMapBrush (TYPE_2__*,int ,int ) ;
 int AAS_MakeBrushWindings (TYPE_2__*) ;
 int AAS_PositionBrush (TYPE_3__*,TYPE_2__*) ;
 int AAS_SetTexinfo (TYPE_2__*) ;
 int AAS_ValidEntity (TYPE_3__*) ;
 int AddBrushBevels (TYPE_2__*) ;
 int CONTENTS_AREAPORTAL ;
 int CONTENTS_BOTCLIP ;
 int CONTENTS_CLUSTERPORTAL ;
 int CONTENTS_DETAIL ;
 int CONTENTS_DONOTENTER ;
 int CONTENTS_JUMPPAD ;
 int CONTENTS_LADDER ;
 int CONTENTS_LAVA ;
 int CONTENTS_MOVER ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_TELEPORTER ;
 int CONTENTS_WATER ;
 int CONTENTS_WINDOW ;
 int FreeBrushWindings (TYPE_2__*) ;
 TYPE_5__ cfg ;
 TYPE_3__* entities ;
 int nummapbrushes ;
 int nummapbrushsides ;

void AAS_CreateMapBrushes(mapbrush_t *brush, entity_t *mapent, int addbevels)
{
 int i;

 mapbrush_t *bboxbrushes[16];


 if (!AAS_ValidEntity(mapent))
 {
  nummapbrushsides -= brush->numsides;
  brush->numsides = 0;
  return;
 }

 AAS_PositionBrush(mapent, brush);


 AAS_SetTexinfo(brush);


 brush->contents &= ~CONTENTS_DETAIL;

 if (brush->contents & (CONTENTS_AREAPORTAL|CONTENTS_CLUSTERPORTAL))
 {
  brush->contents = CONTENTS_CLUSTERPORTAL;
  brush->leafnum = -1;
 }

 if (brush->contents & (CONTENTS_WINDOW | CONTENTS_PLAYERCLIP))
 {

  brush->contents &= ~(CONTENTS_WINDOW | CONTENTS_PLAYERCLIP);
  brush->contents |= CONTENTS_SOLID;
  brush->leafnum = -1;
 }

 if (brush->contents & CONTENTS_BOTCLIP)
 {
  brush->contents = CONTENTS_SOLID;
  brush->leafnum = -1;
 }





 if (!(brush->contents & (CONTENTS_SOLID
         | CONTENTS_LADDER
         | CONTENTS_CLUSTERPORTAL
         | CONTENTS_DONOTENTER
         | CONTENTS_TELEPORTER
         | CONTENTS_JUMPPAD
         | CONTENTS_WATER
         | CONTENTS_LAVA
         | CONTENTS_SLIME
         | CONTENTS_MOVER
         )))
 {
  nummapbrushsides -= brush->numsides;
  brush->numsides = 0;
  return;
 }



 if (addbevels)
 {






  AAS_MakeBrushWindings(brush);
  AddBrushBevels(brush);
  FreeBrushWindings(brush);
 }

 mapent = &entities[0];

 nummapbrushes++;
 mapent->numbrushes++;

 if (brush->contents & (CONTENTS_WATER
         | CONTENTS_LAVA
         | CONTENTS_SLIME
         | CONTENTS_TELEPORTER
         | CONTENTS_JUMPPAD
         | CONTENTS_DONOTENTER
         | CONTENTS_MOVER
         ))
 {
  brush->expansionbbox = 0;


  AAS_ExpandMapBrush(brush, cfg.bboxes[0].mins, cfg.bboxes[0].maxs);
  AAS_MakeBrushWindings(brush);
 }

 else if (brush->contents & CONTENTS_CLUSTERPORTAL)
 {
  brush->expansionbbox = 0;


  AAS_ExpandMapBrush(brush, cfg.bboxes[0].mins, cfg.bboxes[0].maxs);
  AAS_MakeBrushWindings(brush);
 }

 else if (brush->contents & (CONTENTS_SOLID
          | CONTENTS_LADDER
          ))
 {

  bboxbrushes[0] = brush;

  for (i = 1; i < cfg.numbboxes; i++)
  {
   bboxbrushes[i] = AAS_CopyMapBrush(brush, mapent);
  }

  for (i = 0; i < cfg.numbboxes; i++)
  {
   AAS_ExpandMapBrush(bboxbrushes[i], cfg.bboxes[i].mins, cfg.bboxes[i].maxs);
   bboxbrushes[i]->expansionbbox = cfg.bboxes[i].presencetype;
   AAS_MakeBrushWindings(bboxbrushes[i]);
  }
 }
}
