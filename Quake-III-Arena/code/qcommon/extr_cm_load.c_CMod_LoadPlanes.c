
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_8__ {int dist; int * normal; } ;
typedef TYPE_2__ dplane_t ;
struct TYPE_9__ {scalar_t__* normal; int signbits; int type; void* dist; } ;
typedef TYPE_3__ cplane_t ;
struct TYPE_10__ {int numPlanes; TYPE_3__* planes; } ;


 int BOX_PLANES ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_3__* Hunk_Alloc (int,int ) ;
 void* LittleFloat (int ) ;
 int PlaneTypeForNormal (scalar_t__*) ;
 TYPE_4__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadPlanes (lump_t *l)
{
 int i, j;
 cplane_t *out;
 dplane_t *in;
 int count;
 int bits;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 count = l->filelen / sizeof(*in);

 if (count < 1)
  Com_Error (ERR_DROP, "Map with no planes");
 cm.planes = Hunk_Alloc( ( BOX_PLANES + count ) * sizeof( *cm.planes ), h_high );
 cm.numPlanes = count;

 out = cm.planes;

 for ( i=0 ; i<count ; i++, in++, out++)
 {
  bits = 0;
  for (j=0 ; j<3 ; j++)
  {
   out->normal[j] = LittleFloat (in->normal[j]);
   if (out->normal[j] < 0)
    bits |= 1<<j;
  }

  out->dist = LittleFloat (in->dist);
  out->type = PlaneTypeForNormal( out->normal );
  out->signbits = bits;
 }
}
