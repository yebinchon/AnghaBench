
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
struct TYPE_8__ {int * children; int planeNum; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_9__ {int* children; scalar_t__ plane; } ;
typedef TYPE_3__ cNode_t ;
struct TYPE_10__ {int numNodes; scalar_t__ planes; TYPE_3__* nodes; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_3__* Hunk_Alloc (int,int ) ;
 int LittleLong (int ) ;
 TYPE_4__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadNodes( lump_t *l ) {
 dnode_t *in;
 int child;
 cNode_t *out;
 int i, j, count;

 in = (void *)(cmod_base + l->fileofs);
 if (l->filelen % sizeof(*in))
  Com_Error (ERR_DROP, "MOD_LoadBmodel: funny lump size");
 count = l->filelen / sizeof(*in);

 if (count < 1)
  Com_Error (ERR_DROP, "Map has no nodes");
 cm.nodes = Hunk_Alloc( count * sizeof( *cm.nodes ), h_high );
 cm.numNodes = count;

 out = cm.nodes;

 for (i=0 ; i<count ; i++, out++, in++)
 {
  out->plane = cm.planes + LittleLong( in->planeNum );
  for (j=0 ; j<2 ; j++)
  {
   child = LittleLong (in->children[j]);
   out->children[j] = child;
  }
 }

}
