#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int numpoints; double** points; } ;
typedef  TYPE_1__ winding_t ;
struct TYPE_16__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
struct TYPE_15__ {int merged; size_t numportals; int num; int hint; int leaf; TYPE_3__ plane; TYPE_1__* winding; struct TYPE_15__** portals; } ;
typedef  TYPE_2__ vportal_t ;
typedef  TYPE_3__ plane_t ;
typedef  TYPE_2__ leaf_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_POINTS_ON_WINDING ; 
 size_t MAX_PORTALS_ON_LEAF ; 
 void* FUNC1 (int) ; 
 char* PORTALFILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ VIS_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC4 (double*,double*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_2__* faceleafs ; 
 TYPE_2__* faces ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int leafbytes ; 
 int leaflongs ; 
 TYPE_2__* leafs ; 
 TYPE_2__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ numVisBytes ; 
 int numfaces ; 
 int numportals ; 
 int portalbytes ; 
 int portalclusters ; 
 int portallongs ; 
 TYPE_2__* portals ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  vec3_origin ; 
 scalar_t__ visBytes ; 

void FUNC13 (char *name)
{
	int			i, j, hint;
	vportal_t	*p;
	leaf_t		*l;
	char		magic[80];
	FILE		*f;
	int			numpoints;
	winding_t	*w;
	int			leafnums[2];
	plane_t		plane;
	
	if (!FUNC12(name,"-"))
		f = stdin;
	else
	{
		f = FUNC8(name, "r");
		if (!f)
			FUNC0 ("LoadPortals: couldn't read %s\n",name);
	}

	if (FUNC9 (f,"%79s\n%i\n%i\n%i\n",magic, &portalclusters, &numportals, &numfaces) != 4)
		FUNC0 ("LoadPortals: failed to read header");
	if (FUNC12(magic,PORTALFILE))
		FUNC0 ("LoadPortals: not a portal file");

	FUNC6 ("%6i portalclusters\n", portalclusters);
	FUNC6 ("%6i numportals\n", numportals);
	FUNC6 ("%6i numfaces\n", numfaces);

	// these counts should take advantage of 64 bit systems automatically
	leafbytes = ((portalclusters+63)&~63)>>3;
	leaflongs = leafbytes/sizeof(long);
	
	portalbytes = ((numportals*2+63)&~63)>>3;
	portallongs = portalbytes/sizeof(long);

	// each file portal is split into two memory portals
	portals = FUNC10(2*numportals*sizeof(vportal_t));
	FUNC11 (portals, 0, 2*numportals*sizeof(vportal_t));
	
	leafs = FUNC10(portalclusters*sizeof(leaf_t));
	FUNC11 (leafs, 0, portalclusters*sizeof(leaf_t));

	for (i = 0; i < portalclusters; i++)
		leafs[i].merged = -1;

	numVisBytes = VIS_HEADER_SIZE + portalclusters*leafbytes;

	((int *)visBytes)[0] = portalclusters;
	((int *)visBytes)[1] = leafbytes;
		
	for (i=0, p=portals ; i<numportals ; i++)
	{
		if (FUNC9 (f, "%i %i %i ", &numpoints, &leafnums[0], &leafnums[1]) != 3)
			FUNC0 ("LoadPortals: reading portal %i", i);
		if (numpoints > MAX_POINTS_ON_WINDING)
			FUNC0 ("LoadPortals: portal %i has too many points", i);
		if ( (unsigned)leafnums[0] > portalclusters
		|| (unsigned)leafnums[1] > portalclusters)
			FUNC0 ("LoadPortals: reading portal %i", i);
		if (FUNC9 (f, "%i ", &hint) != 1)
			FUNC0 ("LoadPortals: reading hint state");
		
		w = p->winding = FUNC1 (numpoints);
		w->numpoints = numpoints;
		
		for (j=0 ; j<numpoints ; j++)
		{
			double	v[3];
			int		k;

			// scanf into double, then assign to vec_t
			// so we don't care what size vec_t is
			if (FUNC9 (f, "(%lf %lf %lf ) "
			, &v[0], &v[1], &v[2]) != 3)
				FUNC0 ("LoadPortals: reading portal %i", i);
			for (k=0 ; k<3 ; k++)
				w->points[j][k] = v[k];
		}
		FUNC9 (f, "\n");
		
		// calc plane
		FUNC2 (w, &plane);

		// create forward portal
		l = &leafs[leafnums[0]];
		if (l->numportals == MAX_PORTALS_ON_LEAF)
			FUNC0 ("Leaf with too many portals");
		l->portals[l->numportals] = p;
		l->numportals++;
		
		p->num = i+1;
		p->hint = hint;
		p->winding = w;
		FUNC5 (vec3_origin, plane.normal, p->plane.normal);
		p->plane.dist = -plane.dist;
		p->leaf = leafnums[1];
		FUNC3 (p);
		p++;
		
		// create backwards portal
		l = &leafs[leafnums[1]];
		if (l->numportals == MAX_PORTALS_ON_LEAF)
			FUNC0 ("Leaf with too many portals");
		l->portals[l->numportals] = p;
		l->numportals++;
		
		p->num = i+1;
		p->hint = hint;
		p->winding = FUNC1(w->numpoints);
		p->winding->numpoints = w->numpoints;
		for (j=0 ; j<w->numpoints ; j++)
		{
			FUNC4 (w->points[w->numpoints-1-j], p->winding->points[j]);
		}

		p->plane = plane;
		p->leaf = leafnums[0];
		FUNC3 (p);
		p++;

	}

	faces = FUNC10(2*numfaces*sizeof(vportal_t));
	FUNC11 (faces, 0, 2*numfaces*sizeof(vportal_t));

	faceleafs = FUNC10(portalclusters*sizeof(leaf_t));
	FUNC11(faceleafs, 0, portalclusters*sizeof(leaf_t));

	for (i = 0, p = faces; i < numfaces; i++)
	{
		if (FUNC9 (f, "%i %i ", &numpoints, &leafnums[0]) != 2)
			FUNC0 ("LoadPortals: reading portal %i", i);

		w = p->winding = FUNC1 (numpoints);
		w->numpoints = numpoints;
		
		for (j=0 ; j<numpoints ; j++)
		{
			double	v[3];
			int		k;

			// scanf into double, then assign to vec_t
			// so we don't care what size vec_t is
			if (FUNC9 (f, "(%lf %lf %lf ) "
			, &v[0], &v[1], &v[2]) != 3)
				FUNC0 ("LoadPortals: reading portal %i", i);
			for (k=0 ; k<3 ; k++)
				w->points[j][k] = v[k];
		}
		FUNC9 (f, "\n");
		
		// calc plane
		FUNC2 (w, &plane);

		l = &faceleafs[leafnums[0]];
		l->merged = -1;
		if (l->numportals == MAX_PORTALS_ON_LEAF)
			FUNC0 ("Leaf with too many faces");
		l->portals[l->numportals] = p;
		l->numportals++;
		
		p->num = i+1;
		p->winding = w;
		// normal pointing out of the leaf
		FUNC5 (vec3_origin, plane.normal, p->plane.normal);
		p->plane.dist = -plane.dist;
		p->leaf = -1;
		FUNC3 (p);
		p++;
	}
	
	FUNC7 (f);
}