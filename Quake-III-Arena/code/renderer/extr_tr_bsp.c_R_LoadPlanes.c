
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_9__ {int dist; int * normal; } ;
typedef TYPE_2__ dplane_t ;
struct TYPE_10__ {scalar_t__* normal; int signbits; int type; void* dist; } ;
typedef TYPE_3__ cplane_t ;
struct TYPE_12__ {TYPE_3__* (* Hunk_Alloc ) (int,int ) ;int (* Error ) (int ,char*,int ) ;} ;
struct TYPE_11__ {int numplanes; TYPE_3__* planes; int name; } ;


 int ERR_DROP ;
 void* LittleFloat (int ) ;
 int PlaneTypeForNormal (scalar_t__*) ;
 scalar_t__ fileBase ;
 int h_low ;
 TYPE_6__ ri ;
 TYPE_5__ s_worldData ;
 int stub1 (int ,char*,int ) ;
 TYPE_3__* stub2 (int,int ) ;

__attribute__((used)) static void R_LoadPlanes( lump_t *l ) {
 int i, j;
 cplane_t *out;
 dplane_t *in;
 int count;
 int bits;

 in = (void *)(fileBase + l->fileofs);
 if (l->filelen % sizeof(*in))
  ri.Error (ERR_DROP, "LoadMap: funny lump size in %s",s_worldData.name);
 count = l->filelen / sizeof(*in);
 out = ri.Hunk_Alloc ( count*2*sizeof(*out), h_low);

 s_worldData.planes = out;
 s_worldData.numplanes = count;

 for ( i=0 ; i<count ; i++, in++, out++) {
  bits = 0;
  for (j=0 ; j<3 ; j++) {
   out->normal[j] = LittleFloat (in->normal[j]);
   if (out->normal[j] < 0) {
    bits |= 1<<j;
   }
  }

  out->dist = LittleFloat (in->dist);
  out->type = PlaneTypeForNormal( out->normal );
  out->signbits = bits;
 }
}
