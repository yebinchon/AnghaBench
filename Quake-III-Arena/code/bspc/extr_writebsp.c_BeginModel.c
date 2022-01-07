
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int maxs; int mins; int numsides; } ;
typedef TYPE_1__ mapbrush_t ;
struct TYPE_8__ {int firstbrush; int numbrushes; } ;
typedef TYPE_2__ entity_t ;
struct TYPE_9__ {int maxs; int mins; void* firstface; } ;
typedef TYPE_3__ dmodel_t ;


 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int Error (char*) ;
 size_t MAX_MAP_MODELS ;
 int VectorCopy (int ,int ) ;
 TYPE_3__* dmodels ;
 TYPE_2__* entities ;
 size_t entity_num ;
 int firstmodeledge ;
 void* firstmodelface ;
 int firstmodleaf ;
 TYPE_1__* mapbrushes ;
 int numedges ;
 void* numfaces ;
 int numleafs ;
 size_t nummodels ;

void BeginModel (void)
{
 dmodel_t *mod;
 int start, end;
 mapbrush_t *b;
 int j;
 entity_t *e;
 vec3_t mins, maxs;

 if (nummodels == MAX_MAP_MODELS)
  Error ("MAX_MAP_MODELS");
 mod = &dmodels[nummodels];

 mod->firstface = numfaces;

 firstmodleaf = numleafs;
 firstmodeledge = numedges;
 firstmodelface = numfaces;




 e = &entities[entity_num];

 start = e->firstbrush;
 end = start + e->numbrushes;
 ClearBounds (mins, maxs);

 for (j=start ; j<end ; j++)
 {
  b = &mapbrushes[j];
  if (!b->numsides)
   continue;
  AddPointToBounds (b->mins, mins, maxs);
  AddPointToBounds (b->maxs, mins, maxs);
 }

 VectorCopy (mins, mod->mins);
 VectorCopy (maxs, mod->maxs);
}
