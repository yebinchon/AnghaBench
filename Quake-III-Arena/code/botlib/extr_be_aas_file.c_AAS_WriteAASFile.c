
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
typedef int fileHandle_t ;
typedef int aas_vertex_t ;
typedef int aas_reachability_t ;
typedef int aas_portalindex_t ;
typedef int aas_portal_t ;
typedef int aas_plane_t ;
typedef int aas_node_t ;
struct TYPE_8__ {void* bspchecksum; void* version; void* ident; } ;
typedef TYPE_1__ aas_header_t ;
typedef int aas_faceindex_t ;
typedef int aas_face_t ;
typedef int aas_edgeindex_t ;
typedef int aas_edge_t ;
typedef int aas_cluster_t ;
typedef int aas_bbox_t ;
typedef int aas_areasettings_t ;
typedef int aas_area_t ;
struct TYPE_10__ {int numbboxes; int numvertexes; int numplanes; int numedges; int edgeindexsize; int numfaces; int faceindexsize; int numareas; int numareasettings; int reachabilitysize; int numnodes; int numportals; int portalindexsize; int numclusters; int clusters; int portalindex; int portals; int nodes; int reachability; int areasettings; int areas; int faceindex; int faces; int edgeindex; int edges; int planes; int vertexes; int bboxes; int bspchecksum; } ;
struct TYPE_9__ {int (* FS_FCloseFile ) (int ) ;int (* FS_Write ) (TYPE_1__*,int,int ) ;int (* FS_Seek ) (int ,int ,int ) ;int (* Print ) (int ,char*,char*) ;int (* FS_FOpenFile ) (char*,int *,int ) ;} ;


 int AASID ;
 int AASLUMP_AREAS ;
 int AASLUMP_AREASETTINGS ;
 int AASLUMP_BBOXES ;
 int AASLUMP_CLUSTERS ;
 int AASLUMP_EDGEINDEX ;
 int AASLUMP_EDGES ;
 int AASLUMP_FACEINDEX ;
 int AASLUMP_FACES ;
 int AASLUMP_NODES ;
 int AASLUMP_PLANES ;
 int AASLUMP_PORTALINDEX ;
 int AASLUMP_PORTALS ;
 int AASLUMP_REACHABILITY ;
 int AASLUMP_VERTEXES ;
 int AASVERSION ;
 int AAS_DData (unsigned char*,int) ;
 int AAS_SwapAASData () ;
 int AAS_WriteAASLump (int ,TYPE_1__*,int ,int ,int) ;
 int AAS_WriteAASLump_offset ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int FS_SEEK_SET ;
 int FS_WRITE ;
 void* LittleLong (int ) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 TYPE_5__ aasworld ;
 TYPE_4__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,char*) ;
 int stub2 (char*,int *,int ) ;
 int stub3 (int ,char*,char*) ;
 int stub4 (TYPE_1__*,int,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (TYPE_1__*,int,int ) ;
 int stub7 (int ) ;

qboolean AAS_WriteAASFile(char *filename)
{
 aas_header_t header;
 fileHandle_t fp;

 botimport.Print(PRT_MESSAGE, "writing %s\n", filename);

 AAS_SwapAASData();

 Com_Memset(&header, 0, sizeof(aas_header_t));
 header.ident = LittleLong(AASID);
 header.version = LittleLong(AASVERSION);
 header.bspchecksum = LittleLong(aasworld.bspchecksum);

 botimport.FS_FOpenFile( filename, &fp, FS_WRITE );
 if (!fp)
 {
  botimport.Print(PRT_ERROR, "error opening %s\n", filename);
  return qfalse;
 }

 botimport.FS_Write(&header, sizeof(aas_header_t), fp);
 AAS_WriteAASLump_offset = sizeof(aas_header_t);

 if (!AAS_WriteAASLump(fp, &header, AASLUMP_BBOXES, aasworld.bboxes,
  aasworld.numbboxes * sizeof(aas_bbox_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_VERTEXES, aasworld.vertexes,
  aasworld.numvertexes * sizeof(aas_vertex_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_PLANES, aasworld.planes,
  aasworld.numplanes * sizeof(aas_plane_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_EDGES, aasworld.edges,
  aasworld.numedges * sizeof(aas_edge_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_EDGEINDEX, aasworld.edgeindex,
  aasworld.edgeindexsize * sizeof(aas_edgeindex_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_FACES, aasworld.faces,
  aasworld.numfaces * sizeof(aas_face_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_FACEINDEX, aasworld.faceindex,
  aasworld.faceindexsize * sizeof(aas_faceindex_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_AREAS, aasworld.areas,
  aasworld.numareas * sizeof(aas_area_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_AREASETTINGS, aasworld.areasettings,
  aasworld.numareasettings * sizeof(aas_areasettings_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_REACHABILITY, aasworld.reachability,
  aasworld.reachabilitysize * sizeof(aas_reachability_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_NODES, aasworld.nodes,
  aasworld.numnodes * sizeof(aas_node_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_PORTALS, aasworld.portals,
  aasworld.numportals * sizeof(aas_portal_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_PORTALINDEX, aasworld.portalindex,
  aasworld.portalindexsize * sizeof(aas_portalindex_t))) return qfalse;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_CLUSTERS, aasworld.clusters,
  aasworld.numclusters * sizeof(aas_cluster_t))) return qfalse;

 botimport.FS_Seek(fp, 0, FS_SEEK_SET);
 AAS_DData((unsigned char *) &header + 8, sizeof(aas_header_t) - 8);
 botimport.FS_Write(&header, sizeof(aas_header_t), fp);

 botimport.FS_FCloseFile(fp);
 return qtrue;
}
