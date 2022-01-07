
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ident; scalar_t__ version; int numareas; int numclusters; scalar_t__ areacrc; scalar_t__ clustercrc; int numportalcache; int numareacache; } ;
typedef TYPE_1__ routecacheheader_t ;
typedef int fileHandle_t ;
struct TYPE_8__ {size_t areanum; size_t cluster; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_2__ aas_routingcache_t ;
typedef int aas_cluster_t ;
typedef int aas_area_t ;
struct TYPE_10__ {int numareas; int numclusters; TYPE_2__*** clusterareacache; TYPE_2__** portalcache; scalar_t__ clusters; scalar_t__ areas; int mapname; } ;
struct TYPE_9__ {int (* FS_FCloseFile ) (int ) ;int (* FS_Read ) (TYPE_1__*,int,int ) ;int (* FS_FOpenFile ) (char*,int *,int ) ;} ;


 int AAS_ClusterAreaNum (size_t,size_t) ;
 int AAS_Error (char*,...) ;
 TYPE_2__* AAS_ReadCache (int ) ;
 scalar_t__ CRC_ProcessString (unsigned char*,int) ;
 int Com_sprintf (char*,int,char*,int ) ;
 int FS_READ ;
 int MAX_QPATH ;
 scalar_t__ RCID ;
 scalar_t__ RCVERSION ;
 TYPE_5__ aasworld ;
 TYPE_4__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (char*,int *,int ) ;
 int stub2 (TYPE_1__*,int,int ) ;
 int stub3 (int ) ;

int AAS_ReadRouteCache(void)
{
 int i, clusterareanum;
 fileHandle_t fp;
 char filename[MAX_QPATH];
 routecacheheader_t routecacheheader;
 aas_routingcache_t *cache;

 Com_sprintf(filename, MAX_QPATH, "maps/%s.rcd", aasworld.mapname);
 botimport.FS_FOpenFile( filename, &fp, FS_READ );
 if (!fp)
 {
  return qfalse;
 }
 botimport.FS_Read(&routecacheheader, sizeof(routecacheheader_t), fp );
 if (routecacheheader.ident != RCID)
 {
  AAS_Error("%s is not a route cache dump\n");
  return qfalse;
 }
 if (routecacheheader.version != RCVERSION)
 {
  AAS_Error("route cache dump has wrong version %d, should be %d", routecacheheader.version, RCVERSION);
  return qfalse;
 }
 if (routecacheheader.numareas != aasworld.numareas)
 {

  return qfalse;
 }
 if (routecacheheader.numclusters != aasworld.numclusters)
 {

  return qfalse;
 }
 if (routecacheheader.areacrc !=
  CRC_ProcessString( (unsigned char *)aasworld.areas, sizeof(aas_area_t) * aasworld.numareas ))
 {

  return qfalse;
 }
 if (routecacheheader.clustercrc !=
  CRC_ProcessString( (unsigned char *)aasworld.clusters, sizeof(aas_cluster_t) * aasworld.numclusters ))
 {

  return qfalse;
 }

 for (i = 0; i < routecacheheader.numportalcache; i++)
 {
  cache = AAS_ReadCache(fp);
  cache->next = aasworld.portalcache[cache->areanum];
  cache->prev = ((void*)0);
  if (aasworld.portalcache[cache->areanum])
   aasworld.portalcache[cache->areanum]->prev = cache;
  aasworld.portalcache[cache->areanum] = cache;
 }

 for (i = 0; i < routecacheheader.numareacache; i++)
 {
  cache = AAS_ReadCache(fp);
  clusterareanum = AAS_ClusterAreaNum(cache->cluster, cache->areanum);
  cache->next = aasworld.clusterareacache[cache->cluster][clusterareanum];
  cache->prev = ((void*)0);
  if (aasworld.clusterareacache[cache->cluster][clusterareanum])
   aasworld.clusterareacache[cache->cluster][clusterareanum]->prev = cache;
  aasworld.clusterareacache[cache->cluster][clusterareanum] = cache;
 }
 botimport.FS_FCloseFile(fp);
 return qtrue;
}
