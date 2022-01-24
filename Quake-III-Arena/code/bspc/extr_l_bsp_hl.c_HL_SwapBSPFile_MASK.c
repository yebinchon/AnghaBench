#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_14__ {int* headnode; int visleafs; int firstface; int numfaces; void** origin; void** maxs; void** mins; } ;
typedef  TYPE_1__ hl_dmodel_t ;
struct TYPE_15__ {int nummiptex; int* dataofs; } ;
typedef  TYPE_2__ hl_dmiptexlump_t ;
struct TYPE_21__ {int lightofs; int firstedge; void* numedges; void* side; void* planenum; void* texinfo; } ;
struct TYPE_20__ {int contents; int visofs; void* nummarksurfaces; void* firstmarksurface; void** maxs; void** mins; } ;
struct TYPE_19__ {int planenum; void* numfaces; void* firstface; void** children; void** maxs; void** mins; } ;
struct TYPE_18__ {int type; void* dist; void** normal; } ;
struct TYPE_17__ {void** point; } ;
struct TYPE_16__ {int miptex; int flags; void*** vecs; } ;
struct TYPE_13__ {int planenum; void** children; } ;
struct TYPE_12__ {void** v; } ;

/* Variables and functions */
 int HL_MAX_MAP_HULLS ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 TYPE_11__* hl_dclipnodes ; 
 TYPE_10__* hl_dedges ; 
 TYPE_9__* hl_dfaces ; 
 TYPE_8__* hl_dleafs ; 
 void** hl_dmarksurfaces ; 
 TYPE_1__* hl_dmodels ; 
 TYPE_6__* hl_dnodes ; 
 TYPE_5__* hl_dplanes ; 
 int* hl_dsurfedges ; 
 scalar_t__ hl_dtexdata ; 
 TYPE_4__* hl_dvertexes ; 
 int hl_numclipnodes ; 
 int hl_numedges ; 
 int hl_numfaces ; 
 int hl_numleafs ; 
 int hl_nummarksurfaces ; 
 int hl_nummodels ; 
 int hl_numnodes ; 
 int hl_numplanes ; 
 int hl_numsurfedges ; 
 int hl_numtexinfo ; 
 int hl_numvertexes ; 
 scalar_t__ hl_texdatasize ; 
 TYPE_3__* hl_texinfo ; 

void FUNC3 (qboolean todisk)
{
	int i, j, c;
	hl_dmodel_t *d;
	hl_dmiptexlump_t *mtl;

	
// models	
	for (i = 0; i < hl_nummodels; i++)
	{
		d = &hl_dmodels[i];

		for (j = 0; j < HL_MAX_MAP_HULLS; j++)
			d->headnode[j] = FUNC1(d->headnode[j]);

		d->visleafs = FUNC1(d->visleafs);
		d->firstface = FUNC1(d->firstface);
		d->numfaces = FUNC1(d->numfaces);
		
		for (j = 0; j < 3; j++)
		{
			d->mins[j] = FUNC0(d->mins[j]);
			d->maxs[j] = FUNC0(d->maxs[j]);
			d->origin[j] = FUNC0(d->origin[j]);
		}
	}

//
// vertexes
//
	for (i = 0; i < hl_numvertexes; i++)
	{
		for (j = 0; j < 3; j++)
			hl_dvertexes[i].point[j] = FUNC0 (hl_dvertexes[i].point[j]);
	}
		
//
// planes
//	
	for (i=0 ; i<hl_numplanes ; i++)
	{
		for (j=0 ; j<3 ; j++)
			hl_dplanes[i].normal[j] = FUNC0 (hl_dplanes[i].normal[j]);
		hl_dplanes[i].dist = FUNC0 (hl_dplanes[i].dist);
		hl_dplanes[i].type = FUNC1 (hl_dplanes[i].type);
	}
	
//
// texinfos
//	
	for (i=0 ; i<hl_numtexinfo ; i++)
	{
		for (j=0 ; j<8 ; j++)
			hl_texinfo[i].vecs[0][j] = FUNC0 (hl_texinfo[i].vecs[0][j]);
		hl_texinfo[i].miptex = FUNC1 (hl_texinfo[i].miptex);
		hl_texinfo[i].flags = FUNC1 (hl_texinfo[i].flags);
	}
	
//
// faces
//
	for (i=0 ; i<hl_numfaces ; i++)
	{
		hl_dfaces[i].texinfo = FUNC2 (hl_dfaces[i].texinfo);
		hl_dfaces[i].planenum = FUNC2 (hl_dfaces[i].planenum);
		hl_dfaces[i].side = FUNC2 (hl_dfaces[i].side);
		hl_dfaces[i].lightofs = FUNC1 (hl_dfaces[i].lightofs);
		hl_dfaces[i].firstedge = FUNC1 (hl_dfaces[i].firstedge);
		hl_dfaces[i].numedges = FUNC2 (hl_dfaces[i].numedges);
	}

//
// nodes
//
	for (i=0 ; i<hl_numnodes ; i++)
	{
		hl_dnodes[i].planenum = FUNC1 (hl_dnodes[i].planenum);
		for (j=0 ; j<3 ; j++)
		{
			hl_dnodes[i].mins[j] = FUNC2 (hl_dnodes[i].mins[j]);
			hl_dnodes[i].maxs[j] = FUNC2 (hl_dnodes[i].maxs[j]);
		}
		hl_dnodes[i].children[0] = FUNC2 (hl_dnodes[i].children[0]);
		hl_dnodes[i].children[1] = FUNC2 (hl_dnodes[i].children[1]);
		hl_dnodes[i].firstface = FUNC2 (hl_dnodes[i].firstface);
		hl_dnodes[i].numfaces = FUNC2 (hl_dnodes[i].numfaces);
	}

//
// leafs
//
	for (i=0 ; i<hl_numleafs ; i++)
	{
		hl_dleafs[i].contents = FUNC1 (hl_dleafs[i].contents);
		for (j=0 ; j<3 ; j++)
		{
			hl_dleafs[i].mins[j] = FUNC2 (hl_dleafs[i].mins[j]);
			hl_dleafs[i].maxs[j] = FUNC2 (hl_dleafs[i].maxs[j]);
		}

		hl_dleafs[i].firstmarksurface = FUNC2 (hl_dleafs[i].firstmarksurface);
		hl_dleafs[i].nummarksurfaces = FUNC2 (hl_dleafs[i].nummarksurfaces);
		hl_dleafs[i].visofs = FUNC1 (hl_dleafs[i].visofs);
	}

//
// clipnodes
//
	for (i=0 ; i<hl_numclipnodes ; i++)
	{
		hl_dclipnodes[i].planenum = FUNC1 (hl_dclipnodes[i].planenum);
		hl_dclipnodes[i].children[0] = FUNC2 (hl_dclipnodes[i].children[0]);
		hl_dclipnodes[i].children[1] = FUNC2 (hl_dclipnodes[i].children[1]);
	}

//
// miptex
//
	if (hl_texdatasize)
	{
		mtl = (hl_dmiptexlump_t *)hl_dtexdata;
		if (todisk)
			c = mtl->nummiptex;
		else
			c = FUNC1(mtl->nummiptex);
		mtl->nummiptex = FUNC1 (mtl->nummiptex);
		for (i=0 ; i<c ; i++)
			mtl->dataofs[i] = FUNC1(mtl->dataofs[i]);
	}
	
//
// marksurfaces
//
	for (i=0 ; i<hl_nummarksurfaces ; i++)
		hl_dmarksurfaces[i] = FUNC2 (hl_dmarksurfaces[i]);

//
// surfedges
//
	for (i=0 ; i<hl_numsurfedges ; i++)
		hl_dsurfedges[i] = FUNC1 (hl_dsurfedges[i]);

//
// edges
//
	for (i=0 ; i<hl_numedges ; i++)
	{
		hl_dedges[i].v[0] = FUNC2 (hl_dedges[i].v[0]);
		hl_dedges[i].v[1] = FUNC2 (hl_dedges[i].v[1]);
	}
}