
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int entitynum; struct TYPE_10__* next; struct TYPE_10__* original; int brushnum; } ;
typedef TYPE_1__ bspbrush_t ;
struct TYPE_13__ {int contents; int maxs; int mins; int detail; } ;
struct TYPE_12__ {int origin; } ;
struct TYPE_11__ {TYPE_1__* brushes; } ;


 int AddBackSides () ;
 int AddBrushBevels () ;
 int CONTENTS_AREAPORTAL ;
 int CONTENTS_MONSTERCLIP ;
 int CONTENTS_ORIGIN ;
 int CONTENTS_PLAYERCLIP ;
 TYPE_1__* CopyBrush (TYPE_4__*) ;
 int CreateBrushWindings (TYPE_4__*) ;
 int SetKeyValue (TYPE_3__*,char*,char*) ;
 int VectorAdd (int ,int ,scalar_t__*) ;
 int VectorCopy (scalar_t__*,int ) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 int _printf (char*,int,int ) ;
 TYPE_4__* buildBrush ;
 int c_detail ;
 TYPE_3__* entities ;
 int entitySourceBrushes ;
 TYPE_2__* mapent ;
 int num_entities ;
 int qtrue ;
 int sprintf (char*,char*,int,int,int) ;

bspbrush_t *FinishBrush( void ) {
 bspbrush_t *b;


 AddBackSides();


 if ( !CreateBrushWindings( buildBrush ) ) {

  return ((void*)0);
 }


 if ( buildBrush->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
 {
  buildBrush->detail = qtrue;
  c_detail++;
 }
 if ( buildBrush->contents & CONTENTS_ORIGIN )
 {
  char string[32];
  vec3_t origin;

  if (num_entities == 1) {
   _printf ("Entity %i, Brush %i: origin brushes not allowed in world\n"
    , num_entities - 1, entitySourceBrushes);
   return ((void*)0);
  }

  VectorAdd (buildBrush->mins, buildBrush->maxs, origin);
  VectorScale (origin, 0.5, origin);

  sprintf (string, "%i %i %i", (int)origin[0], (int)origin[1], (int)origin[2]);
  SetKeyValue (&entities[num_entities - 1], "origin", string);

  VectorCopy (origin, entities[num_entities - 1].origin);


  return ((void*)0);
 }

 if ( buildBrush->contents & CONTENTS_AREAPORTAL ) {
  if (num_entities != 1) {
   _printf ("Entity %i, Brush %i: areaportals only allowed in world\n"
    , num_entities - 1, entitySourceBrushes);
   return ((void*)0);
  }
 }

 AddBrushBevels ();


 b = CopyBrush( buildBrush );

 b->entitynum = num_entities-1;
 b->brushnum = entitySourceBrushes;

 b->original = b;

 b->next = mapent->brushes;
 mapent->brushes = b;

 return b;
}
