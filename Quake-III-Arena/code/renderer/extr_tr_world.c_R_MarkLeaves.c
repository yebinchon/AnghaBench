
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int cluster; int area; scalar_t__ contents; scalar_t__ visframe; struct TYPE_14__* parent; } ;
typedef TYPE_4__ mnode_t ;
typedef int byte ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {scalar_t__ integer; scalar_t__ modified; } ;
struct TYPE_16__ {int (* Printf ) (int ,char*,int,int) ;} ;
struct TYPE_13__ {int* areamask; int areamaskModified; } ;
struct TYPE_11__ {int pvsOrigin; } ;
struct TYPE_15__ {int viewCluster; scalar_t__ visCount; TYPE_3__ refdef; TYPE_2__* world; TYPE_1__ viewParms; } ;
struct TYPE_12__ {int numnodes; int numClusters; TYPE_4__* nodes; } ;


 scalar_t__ CONTENTS_SOLID ;
 int PRINT_ALL ;
 int* R_ClusterPVS (int) ;
 TYPE_4__* R_PointInLeaf (int ) ;
 scalar_t__ qfalse ;
 TYPE_9__* r_lockpvs ;
 TYPE_8__* r_novis ;
 TYPE_7__* r_showcluster ;
 TYPE_6__ ri ;
 int stub1 (int ,char*,int,int) ;
 TYPE_5__ tr ;

__attribute__((used)) static void R_MarkLeaves (void) {
 const byte *vis;
 mnode_t *leaf, *parent;
 int i;
 int cluster;



 if ( r_lockpvs->integer ) {
  return;
 }


 leaf = R_PointInLeaf( tr.viewParms.pvsOrigin );
 cluster = leaf->cluster;





 if ( tr.viewCluster == cluster && !tr.refdef.areamaskModified
  && !r_showcluster->modified ) {
  return;
 }

 if ( r_showcluster->modified || r_showcluster->integer ) {
  r_showcluster->modified = qfalse;
  if ( r_showcluster->integer ) {
   ri.Printf( PRINT_ALL, "cluster:%i  area:%i\n", cluster, leaf->area );
  }
 }

 tr.visCount++;
 tr.viewCluster = cluster;

 if ( r_novis->integer || tr.viewCluster == -1 ) {
  for (i=0 ; i<tr.world->numnodes ; i++) {
   if (tr.world->nodes[i].contents != CONTENTS_SOLID) {
    tr.world->nodes[i].visframe = tr.visCount;
   }
  }
  return;
 }

 vis = R_ClusterPVS (tr.viewCluster);

 for (i=0,leaf=tr.world->nodes ; i<tr.world->numnodes ; i++, leaf++) {
  cluster = leaf->cluster;
  if ( cluster < 0 || cluster >= tr.world->numClusters ) {
   continue;
  }


  if ( !(vis[cluster>>3] & (1<<(cluster&7))) ) {
   continue;
  }


  if ( (tr.refdef.areamask[leaf->area>>3] & (1<<(leaf->area&7)) ) ) {
   continue;
  }

  parent = leaf;
  do {
   if (parent->visframe == tr.visCount)
    break;
   parent->visframe = tr.visCount;
   parent = parent->parent;
  } while (parent);
 }
}
