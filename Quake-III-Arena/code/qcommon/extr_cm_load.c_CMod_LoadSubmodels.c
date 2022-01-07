
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_2__ lump_t ;
struct TYPE_9__ {int firstSurface; int numSurfaces; int firstBrush; int numBrushes; int * maxs; int * mins; } ;
typedef TYPE_3__ dmodel_t ;
struct TYPE_7__ {int numLeafBrushes; int* firstLeafBrush; int numLeafSurfaces; int* firstLeafSurface; } ;
struct TYPE_10__ {TYPE_1__ leaf; void** maxs; void** mins; } ;
typedef TYPE_4__ cmodel_t ;
struct TYPE_11__ {int numSubModels; int leafbrushes; int leafsurfaces; TYPE_4__* cmodels; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 void* Hunk_Alloc (int,int ) ;
 void* LittleFloat (int ) ;
 int LittleLong (int ) ;
 int MAX_SUBMODELS ;
 TYPE_5__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadSubmodels( lump_t *l ) {
 dmodel_t *in;
 cmodel_t *out;
 int i, j, count;
 int *indexes;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "CMod_LoadSubmodels: funny lump size");
 count = l->filelen / sizeof(*in);

 if (count < 1)
  Com_Error (ERR_DROP, "Map with no models");
 cm.cmodels = Hunk_Alloc( count * sizeof( *cm.cmodels ), h_high );
 cm.numSubModels = count;

 if ( count > MAX_SUBMODELS ) {
  Com_Error( ERR_DROP, "MAX_SUBMODELS exceeded" );
 }

 for ( i=0 ; i<count ; i++, in++, out++)
 {
  out = &cm.cmodels[i];

  for (j=0 ; j<3 ; j++)
  {
   out->mins[j] = LittleFloat (in->mins[j]) - 1;
   out->maxs[j] = LittleFloat (in->maxs[j]) + 1;
  }

  if ( i == 0 ) {
   continue;
  }


  out->leaf.numLeafBrushes = LittleLong( in->numBrushes );
  indexes = Hunk_Alloc( out->leaf.numLeafBrushes * 4, h_high );
  out->leaf.firstLeafBrush = indexes - cm.leafbrushes;
  for ( j = 0 ; j < out->leaf.numLeafBrushes ; j++ ) {
   indexes[j] = LittleLong( in->firstBrush ) + j;
  }

  out->leaf.numLeafSurfaces = LittleLong( in->numSurfaces );
  indexes = Hunk_Alloc( out->leaf.numLeafSurfaces * 4, h_high );
  out->leaf.firstLeafSurface = indexes - cm.leafsurfaces;
  for ( j = 0 ; j < out->leaf.numLeafSurfaces ; j++ ) {
   indexes[j] = LittleLong( in->firstSurface ) + j;
  }
 }
}
