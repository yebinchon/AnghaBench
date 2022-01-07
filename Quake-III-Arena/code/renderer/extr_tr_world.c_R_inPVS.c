
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {int cluster; } ;
typedef TYPE_1__ mnode_t ;
typedef int byte ;


 int* CM_ClusterPVS (int) ;
 TYPE_1__* R_PointInLeaf (int const) ;
 int qfalse ;
 int qtrue ;

qboolean R_inPVS( const vec3_t p1, const vec3_t p2 ) {
 mnode_t *leaf;
 byte *vis;

 leaf = R_PointInLeaf( p1 );
 vis = CM_ClusterPVS( leaf->cluster );
 leaf = R_PointInLeaf( p2 );

 if ( !(vis[leaf->cluster>>3] & (1<<(leaf->cluster&7))) ) {
  return qfalse;
 }
 return qtrue;
}
