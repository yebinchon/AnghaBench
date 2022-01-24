#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ hl_allocatedbspmem ; 
 int /*<<< orphan*/ * hl_dclipnodes ; 
 int /*<<< orphan*/ * hl_dedges ; 
 int /*<<< orphan*/ * hl_dentdata ; 
 int /*<<< orphan*/ * hl_dfaces ; 
 int /*<<< orphan*/ * hl_dleafs ; 
 int /*<<< orphan*/ * hl_dlightdata ; 
 int /*<<< orphan*/ * hl_dmarksurfaces ; 
 int /*<<< orphan*/ * hl_dmodels ; 
 int /*<<< orphan*/ * hl_dnodes ; 
 int /*<<< orphan*/ * hl_dplanes ; 
 int /*<<< orphan*/ * hl_dsurfedges ; 
 int /*<<< orphan*/ * hl_dtexdata ; 
 int /*<<< orphan*/ * hl_dvertexes ; 
 int /*<<< orphan*/ * hl_dvisdata ; 
 scalar_t__ hl_entdatasize ; 
 scalar_t__ hl_lightdatasize ; 
 scalar_t__ hl_numclipnodes ; 
 scalar_t__ hl_numedges ; 
 scalar_t__ hl_numfaces ; 
 scalar_t__ hl_numleafs ; 
 scalar_t__ hl_nummarksurfaces ; 
 scalar_t__ hl_nummodels ; 
 scalar_t__ hl_numnodes ; 
 scalar_t__ hl_numplanes ; 
 scalar_t__ hl_numsurfedges ; 
 scalar_t__ hl_numtexinfo ; 
 scalar_t__ hl_numvertexes ; 
 scalar_t__ hl_texdatasize ; 
 int /*<<< orphan*/ * hl_texinfo ; 
 scalar_t__ hl_visdatasize ; 

void FUNC3(void)
{
	//models
	hl_nummodels = 0;
	FUNC0(hl_dmodels);
	hl_dmodels = NULL;
	//visibility
	hl_visdatasize = 0;
	FUNC0(hl_dvisdata);
	hl_dvisdata = NULL;
	//light data
	hl_lightdatasize = 0;
	FUNC0(hl_dlightdata);
	hl_dlightdata = NULL;
	//texture data
	hl_texdatasize = 0;
	FUNC0(hl_dtexdata);
	hl_dtexdata = NULL;
	//entities
	hl_entdatasize = 0;
	FUNC0(hl_dentdata);
	hl_dentdata = NULL;
	//leaves
	hl_numleafs = 0;
	FUNC0(hl_dleafs);
	hl_dleafs = NULL;
	//planes
	hl_numplanes = 0;
	FUNC0(hl_dplanes);
	hl_dplanes = NULL;
	//vertexes
	hl_numvertexes = 0;
	FUNC0(hl_dvertexes);
	hl_dvertexes = NULL;
	//nodes
	hl_numnodes = 0;
	FUNC0(hl_dnodes);
	hl_dnodes = NULL;
	//texture info
	hl_numtexinfo = 0;
	FUNC0(hl_texinfo);
	hl_texinfo = NULL;
	//faces
	hl_numfaces = 0;
	FUNC0(hl_dfaces);
	hl_dfaces = NULL;
	//clip nodes
	hl_numclipnodes = 0;
	FUNC0(hl_dclipnodes);
	hl_dclipnodes = NULL;
	//edges
	hl_numedges = 0;
	FUNC0(hl_dedges);
	hl_dedges = NULL;
	//mark surfaces
	hl_nummarksurfaces = 0;
	FUNC0(hl_dmarksurfaces);
	hl_dmarksurfaces = NULL;
	//surface edges
	hl_numsurfedges = 0;
	FUNC0(hl_dsurfedges);
	hl_dsurfedges = NULL;
	//
	FUNC1("freed ");
	FUNC2(hl_allocatedbspmem);
	FUNC1(" of BSP memory\n");
	hl_allocatedbspmem = 0;
}