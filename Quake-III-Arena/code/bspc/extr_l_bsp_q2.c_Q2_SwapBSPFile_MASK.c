#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_20__ {int firstface; int numfaces; int headnode; void** origin; void** maxs; void** mins; } ;
typedef  TYPE_1__ dmodel_t ;
struct TYPE_27__ {int lightofs; int firstedge; void* numedges; void* side; void* planenum; void* texinfo; } ;
struct TYPE_26__ {int contents; void* numleafbrushes; void* firstleafbrush; void* numleaffaces; void* firstleafface; void** maxs; void** mins; void* area; void* cluster; } ;
struct TYPE_25__ {int planenum; int* children; void* numfaces; void* firstface; void** maxs; void** mins; } ;
struct TYPE_24__ {int type; void* dist; void** normal; } ;
struct TYPE_23__ {void** point; } ;
struct TYPE_22__ {int numclusters; int** bitofs; } ;
struct TYPE_21__ {int flags; int value; int nexttexinfo; void*** vecs; } ;
struct TYPE_19__ {int portalnum; int otherarea; } ;
struct TYPE_18__ {int numareaportals; int firstareaportal; } ;
struct TYPE_17__ {int firstside; int numsides; int contents; } ;
struct TYPE_16__ {void* texinfo; void* planenum; } ;
struct TYPE_15__ {void** v; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 TYPE_14__* dareaportals ; 
 TYPE_13__* dareas ; 
 TYPE_12__* dbrushes ; 
 TYPE_11__* dbrushsides ; 
 TYPE_10__* dedges ; 
 TYPE_9__* dfaces ; 
 void** dleafbrushes ; 
 void** dleaffaces ; 
 TYPE_8__* dleafs ; 
 TYPE_1__* dmodels ; 
 TYPE_6__* dnodes ; 
 TYPE_5__* dplanes ; 
 int* dsurfedges ; 
 TYPE_4__* dvertexes ; 
 TYPE_3__* dvis ; 
 int numareaportals ; 
 int numareas ; 
 int numbrushes ; 
 int numbrushsides ; 
 int numedges ; 
 int numfaces ; 
 int numleafbrushes ; 
 int numleaffaces ; 
 int numleafs ; 
 int nummodels ; 
 int numnodes ; 
 int numplanes ; 
 int numsurfedges ; 
 int numtexinfo ; 
 int numvertexes ; 
 TYPE_2__* texinfo ; 

void FUNC3 (qboolean todisk)
{
	int				i, j;
	dmodel_t		*d;

	
// models	
	for (i=0 ; i<nummodels ; i++)
	{
		d = &dmodels[i];

		d->firstface = FUNC1 (d->firstface);
		d->numfaces = FUNC1 (d->numfaces);
		d->headnode = FUNC1 (d->headnode);
		
		for (j=0 ; j<3 ; j++)
		{
			d->mins[j] = FUNC0(d->mins[j]);
			d->maxs[j] = FUNC0(d->maxs[j]);
			d->origin[j] = FUNC0(d->origin[j]);
		}
	}

//
// vertexes
//
	for (i=0 ; i<numvertexes ; i++)
	{
		for (j=0 ; j<3 ; j++)
			dvertexes[i].point[j] = FUNC0 (dvertexes[i].point[j]);
	}
		
//
// planes
//	
	for (i=0 ; i<numplanes ; i++)
	{
		for (j=0 ; j<3 ; j++)
			dplanes[i].normal[j] = FUNC0 (dplanes[i].normal[j]);
		dplanes[i].dist = FUNC0 (dplanes[i].dist);
		dplanes[i].type = FUNC1 (dplanes[i].type);
	}
	
//
// texinfos
//	
	for (i=0 ; i<numtexinfo ; i++)
	{
		for (j=0 ; j<8 ; j++)
			texinfo[i].vecs[0][j] = FUNC0 (texinfo[i].vecs[0][j]);
		texinfo[i].flags = FUNC1 (texinfo[i].flags);
		texinfo[i].value = FUNC1 (texinfo[i].value);
		texinfo[i].nexttexinfo = FUNC1 (texinfo[i].nexttexinfo);
	}
	
//
// faces
//
	for (i=0 ; i<numfaces ; i++)
	{
		dfaces[i].texinfo = FUNC2 (dfaces[i].texinfo);
		dfaces[i].planenum = FUNC2 (dfaces[i].planenum);
		dfaces[i].side = FUNC2 (dfaces[i].side);
		dfaces[i].lightofs = FUNC1 (dfaces[i].lightofs);
		dfaces[i].firstedge = FUNC1 (dfaces[i].firstedge);
		dfaces[i].numedges = FUNC2 (dfaces[i].numedges);
	}

//
// nodes
//
	for (i=0 ; i<numnodes ; i++)
	{
		dnodes[i].planenum = FUNC1 (dnodes[i].planenum);
		for (j=0 ; j<3 ; j++)
		{
			dnodes[i].mins[j] = FUNC2 (dnodes[i].mins[j]);
			dnodes[i].maxs[j] = FUNC2 (dnodes[i].maxs[j]);
		}
		dnodes[i].children[0] = FUNC1 (dnodes[i].children[0]);
		dnodes[i].children[1] = FUNC1 (dnodes[i].children[1]);
		dnodes[i].firstface = FUNC2 (dnodes[i].firstface);
		dnodes[i].numfaces = FUNC2 (dnodes[i].numfaces);
	}

//
// leafs
//
	for (i=0 ; i<numleafs ; i++)
	{
		dleafs[i].contents = FUNC1 (dleafs[i].contents);
		dleafs[i].cluster = FUNC2 (dleafs[i].cluster);
		dleafs[i].area = FUNC2 (dleafs[i].area);
		for (j=0 ; j<3 ; j++)
		{
			dleafs[i].mins[j] = FUNC2 (dleafs[i].mins[j]);
			dleafs[i].maxs[j] = FUNC2 (dleafs[i].maxs[j]);
		}

		dleafs[i].firstleafface = FUNC2 (dleafs[i].firstleafface);
		dleafs[i].numleaffaces = FUNC2 (dleafs[i].numleaffaces);
		dleafs[i].firstleafbrush = FUNC2 (dleafs[i].firstleafbrush);
		dleafs[i].numleafbrushes = FUNC2 (dleafs[i].numleafbrushes);
	}

//
// leaffaces
//
	for (i=0 ; i<numleaffaces ; i++)
		dleaffaces[i] = FUNC2 (dleaffaces[i]);

//
// leafbrushes
//
	for (i=0 ; i<numleafbrushes ; i++)
		dleafbrushes[i] = FUNC2 (dleafbrushes[i]);

//
// surfedges
//
	for (i=0 ; i<numsurfedges ; i++)
		dsurfedges[i] = FUNC1 (dsurfedges[i]);

//
// edges
//
	for (i=0 ; i<numedges ; i++)
	{
		dedges[i].v[0] = FUNC2 (dedges[i].v[0]);
		dedges[i].v[1] = FUNC2 (dedges[i].v[1]);
	}

//
// brushes
//
	for (i=0 ; i<numbrushes ; i++)
	{
		dbrushes[i].firstside = FUNC1 (dbrushes[i].firstside);
		dbrushes[i].numsides = FUNC1 (dbrushes[i].numsides);
		dbrushes[i].contents = FUNC1 (dbrushes[i].contents);
	}

//
// areas
//
	for (i=0 ; i<numareas ; i++)
	{
		dareas[i].numareaportals = FUNC1 (dareas[i].numareaportals);
		dareas[i].firstareaportal = FUNC1 (dareas[i].firstareaportal);
	}

//
// areasportals
//
	for (i=0 ; i<numareaportals ; i++)
	{
		dareaportals[i].portalnum = FUNC1 (dareaportals[i].portalnum);
		dareaportals[i].otherarea = FUNC1 (dareaportals[i].otherarea);
	}

//
// brushsides
//
	for (i=0 ; i<numbrushsides ; i++)
	{
		dbrushsides[i].planenum = FUNC2 (dbrushsides[i].planenum);
		dbrushsides[i].texinfo = FUNC2 (dbrushsides[i].texinfo);
	}

//
// visibility
//
	if (todisk)
		j = dvis->numclusters;
	else
		j = FUNC1(dvis->numclusters);
	dvis->numclusters = FUNC1 (dvis->numclusters);
	for (i=0 ; i<j ; i++)
	{
		dvis->bitofs[i][0] = FUNC1 (dvis->bitofs[i][0]);
		dvis->bitofs[i][1] = FUNC1 (dvis->bitofs[i][1]);
	}
}