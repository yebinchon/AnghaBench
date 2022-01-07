
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
typedef int aas_vertex_t ;
typedef int aas_reachability_t ;
typedef int aas_portalindex_t ;
typedef int aas_portal_t ;
typedef int aas_plane_t ;
typedef int aas_node_t ;
struct TYPE_6__ {scalar_t__ ident; scalar_t__ version; scalar_t__ bspchecksum; TYPE_1__* lumps; } ;
typedef TYPE_2__ aas_header_t ;
typedef int aas_faceindex_t ;
typedef int aas_face_t ;
typedef int aas_edgeindex_t ;
typedef int aas_edge_t ;
typedef int aas_cluster_t ;
typedef int aas_bbox_t ;
typedef int aas_areasettings_t ;
typedef int aas_area_t ;
struct TYPE_7__ {int numbboxes; int numvertexes; int numplanes; int numedges; int edgeindexsize; int numfaces; int faceindexsize; int numareas; int numareasettings; int reachabilitysize; int numnodes; int numportals; int portalindexsize; int numclusters; int loaded; int * clusters; int * portalindex; int * portals; int * nodes; int * reachability; int * areasettings; int * areas; int * faceindex; int * faces; int * edgeindex; int * edges; int * planes; int * vertexes; int * bboxes; void* bspchecksum; } ;
struct TYPE_5__ {scalar_t__ fileofs; scalar_t__ filelen; } ;
typedef int FILE ;


 scalar_t__ AASID ;
 size_t AASLUMP_AREAS ;
 size_t AASLUMP_AREASETTINGS ;
 size_t AASLUMP_BBOXES ;
 size_t AASLUMP_CLUSTERS ;
 size_t AASLUMP_EDGEINDEX ;
 size_t AASLUMP_EDGES ;
 size_t AASLUMP_FACEINDEX ;
 size_t AASLUMP_FACES ;
 size_t AASLUMP_NODES ;
 size_t AASLUMP_PLANES ;
 size_t AASLUMP_PORTALINDEX ;
 size_t AASLUMP_PORTALS ;
 size_t AASLUMP_REACHABILITY ;
 size_t AASLUMP_VERTEXES ;
 scalar_t__ AASVERSION ;
 scalar_t__ AASVERSION_OLD ;
 int AAS_DData (unsigned char*,int) ;
 int AAS_DumpAASData () ;
 int AAS_Error (char*,...) ;
 scalar_t__ AAS_LoadAASLump (int *,int,int,int *) ;
 int AAS_SwapAASData () ;
 void* LittleLong (scalar_t__) ;
 int SEEK_SET ;
 TYPE_4__ aasworld ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (TYPE_2__*,int,int,int *) ;
 scalar_t__ fseek (int *,int,int ) ;

qboolean AAS_LoadAASFile(char *filename, int fpoffset, int fplength)
{
 FILE *fp;
 aas_header_t header;
 int offset, length;


 AAS_DumpAASData();

 fp = fopen(filename, "rb");
 if (!fp)
 {
  AAS_Error("can't open %s\n", filename);
  return 0;
 }

 if (fseek(fp, fpoffset, SEEK_SET))
 {
  AAS_Error("can't seek to file %s\n");
  fclose(fp);
  return 0;
 }

 if (fread(&header, sizeof(aas_header_t), 1, fp) != 1)
 {
  AAS_Error("can't read header of file %s\n", filename);
  fclose(fp);
  return 0;
 }

 header.ident = LittleLong(header.ident);
 if (header.ident != AASID)
 {
  AAS_Error("%s is not an AAS file\n", filename);
  fclose(fp);
  return 0;
 }

 header.version = LittleLong(header.version);
 if (header.version != AASVERSION_OLD && header.version != AASVERSION)
 {
  AAS_Error("%s is version %i, not %i\n", filename, header.version, AASVERSION);
  fclose(fp);
  return 0;
 }

 if (header.version == AASVERSION)
 {
  AAS_DData((unsigned char *) &header + 8, sizeof(aas_header_t) - 8);
 }
 aasworld.bspchecksum = LittleLong(header.bspchecksum);


 offset = fpoffset + LittleLong(header.lumps[AASLUMP_BBOXES].fileofs);
 length = LittleLong(header.lumps[AASLUMP_BBOXES].filelen);
 aasworld.bboxes = (aas_bbox_t *) AAS_LoadAASLump(fp, offset, length, aasworld.bboxes);
 if (!aasworld.bboxes) return 0;
 aasworld.numbboxes = length / sizeof(aas_bbox_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_VERTEXES].fileofs);
 length = LittleLong(header.lumps[AASLUMP_VERTEXES].filelen);
 aasworld.vertexes = (aas_vertex_t *) AAS_LoadAASLump(fp, offset, length, aasworld.vertexes);
 if (!aasworld.vertexes) return 0;
 aasworld.numvertexes = length / sizeof(aas_vertex_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_PLANES].fileofs);
 length = LittleLong(header.lumps[AASLUMP_PLANES].filelen);
 aasworld.planes = (aas_plane_t *) AAS_LoadAASLump(fp, offset, length, aasworld.planes);
 if (!aasworld.planes) return 0;
 aasworld.numplanes = length / sizeof(aas_plane_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_EDGES].fileofs);
 length = LittleLong(header.lumps[AASLUMP_EDGES].filelen);
 aasworld.edges = (aas_edge_t *) AAS_LoadAASLump(fp, offset, length, aasworld.edges);
 if (!aasworld.edges) return 0;
 aasworld.numedges = length / sizeof(aas_edge_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_EDGEINDEX].fileofs);
 length = LittleLong(header.lumps[AASLUMP_EDGEINDEX].filelen);
 aasworld.edgeindex = (aas_edgeindex_t *) AAS_LoadAASLump(fp, offset, length, aasworld.edgeindex);
 if (!aasworld.edgeindex) return 0;
 aasworld.edgeindexsize = length / sizeof(aas_edgeindex_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_FACES].fileofs);
 length = LittleLong(header.lumps[AASLUMP_FACES].filelen);
 aasworld.faces = (aas_face_t *) AAS_LoadAASLump(fp, offset, length, aasworld.faces);
 if (!aasworld.faces) return 0;
 aasworld.numfaces = length / sizeof(aas_face_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_FACEINDEX].fileofs);
 length = LittleLong(header.lumps[AASLUMP_FACEINDEX].filelen);
 aasworld.faceindex = (aas_faceindex_t *) AAS_LoadAASLump(fp, offset, length, aasworld.faceindex);
 if (!aasworld.faceindex) return 0;
 aasworld.faceindexsize = length / sizeof(int);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_AREAS].fileofs);
 length = LittleLong(header.lumps[AASLUMP_AREAS].filelen);
 aasworld.areas = (aas_area_t *) AAS_LoadAASLump(fp, offset, length, aasworld.areas);
 if (!aasworld.areas) return 0;
 aasworld.numareas = length / sizeof(aas_area_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_AREASETTINGS].fileofs);
 length = LittleLong(header.lumps[AASLUMP_AREASETTINGS].filelen);
 aasworld.areasettings = (aas_areasettings_t *) AAS_LoadAASLump(fp, offset, length, aasworld.areasettings);
 if (!aasworld.areasettings) return 0;
 aasworld.numareasettings = length / sizeof(aas_areasettings_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_REACHABILITY].fileofs);
 length = LittleLong(header.lumps[AASLUMP_REACHABILITY].filelen);
 aasworld.reachability = (aas_reachability_t *) AAS_LoadAASLump(fp, offset, length, aasworld.reachability);
 if (length && !aasworld.reachability) return 0;
 aasworld.reachabilitysize = length / sizeof(aas_reachability_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_NODES].fileofs);
 length = LittleLong(header.lumps[AASLUMP_NODES].filelen);
 aasworld.nodes = (aas_node_t *) AAS_LoadAASLump(fp, offset, length, aasworld.nodes);
 if (!aasworld.nodes) return 0;
 aasworld.numnodes = length / sizeof(aas_node_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_PORTALS].fileofs);
 length = LittleLong(header.lumps[AASLUMP_PORTALS].filelen);
 aasworld.portals = (aas_portal_t *) AAS_LoadAASLump(fp, offset, length, aasworld.portals);
 if (length && !aasworld.portals) return 0;
 aasworld.numportals = length / sizeof(aas_portal_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_PORTALINDEX].fileofs);
 length = LittleLong(header.lumps[AASLUMP_PORTALINDEX].filelen);
 aasworld.portalindex = (aas_portalindex_t *) AAS_LoadAASLump(fp, offset, length, aasworld.portalindex);
 if (length && !aasworld.portalindex) return 0;
 aasworld.portalindexsize = length / sizeof(aas_portalindex_t);

 offset = fpoffset + LittleLong(header.lumps[AASLUMP_CLUSTERS].fileofs);
 length = LittleLong(header.lumps[AASLUMP_CLUSTERS].filelen);
 aasworld.clusters = (aas_cluster_t *) AAS_LoadAASLump(fp, offset, length, aasworld.clusters);
 if (length && !aasworld.clusters) return 0;
 aasworld.numclusters = length / sizeof(aas_cluster_t);

 AAS_SwapAASData();

 aasworld.loaded = 1;

 fclose(fp);
 return 1;
}
