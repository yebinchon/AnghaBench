
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;
typedef int byte ;


 int* CM_ClusterPVS (int) ;
 int CM_LeafArea (int) ;
 int CM_LeafCluster (int) ;
 int CM_PointLeafnum (int const) ;
 int qfalse ;
 int qtrue ;

qboolean SV_inPVSIgnorePortals( const vec3_t p1, const vec3_t p2)
{
 int leafnum;
 int cluster;
 int area1, area2;
 byte *mask;

 leafnum = CM_PointLeafnum (p1);
 cluster = CM_LeafCluster (leafnum);
 area1 = CM_LeafArea (leafnum);
 mask = CM_ClusterPVS (cluster);

 leafnum = CM_PointLeafnum (p2);
 cluster = CM_LeafCluster (leafnum);
 area2 = CM_LeafArea (leafnum);

 if ( mask && (!(mask[cluster>>3] & (1<<(cluster&7)) ) ) )
  return qfalse;

 return qtrue;
}
