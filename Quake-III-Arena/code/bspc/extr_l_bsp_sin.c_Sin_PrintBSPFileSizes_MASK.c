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
typedef  int /*<<< orphan*/  sin_texinfo_t ;
typedef  int /*<<< orphan*/  sin_lightvalue_t ;
typedef  int /*<<< orphan*/  sin_dvertex_t ;
typedef  int /*<<< orphan*/  sin_dsurfedges ;
typedef  int /*<<< orphan*/  sin_dplane_t ;
typedef  int /*<<< orphan*/  sin_dnode_t ;
typedef  int /*<<< orphan*/  sin_dmodel_t ;
typedef  int /*<<< orphan*/  sin_dleaffaces ;
typedef  int /*<<< orphan*/  sin_dleafbrushes ;
typedef  int /*<<< orphan*/  sin_dleaf_t ;
typedef  int /*<<< orphan*/  sin_dface_t ;
typedef  int /*<<< orphan*/  sin_dedge_t ;
typedef  int /*<<< orphan*/  sin_dbrushside_t ;
typedef  int /*<<< orphan*/  sin_dbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  num_entities ; 
 int /*<<< orphan*/  sin_entdatasize ; 
 int /*<<< orphan*/  sin_lightdatasize ; 
 int sin_numbrushes ; 
 int sin_numbrushsides ; 
 int sin_numedges ; 
 int sin_numfaces ; 
 int sin_numleafbrushes ; 
 int sin_numleaffaces ; 
 int sin_numleafs ; 
 int sin_numlightinfo ; 
 int sin_nummodels ; 
 int sin_numnodes ; 
 int sin_numplanes ; 
 int sin_numsurfedges ; 
 int sin_numtexinfo ; 
 int sin_numvertexes ; 
 int /*<<< orphan*/  sin_visdatasize ; 

void FUNC2 (void)
{
	if (!num_entities)
		FUNC1 ();

	FUNC0("%6i models       %7i\n"
		,sin_nummodels, (int)(sin_nummodels*sizeof(sin_dmodel_t)));
	FUNC0("%6i brushes      %7i\n"
		,sin_numbrushes, (int)(sin_numbrushes*sizeof(sin_dbrush_t)));
	FUNC0("%6i brushsides   %7i\n"
		,sin_numbrushsides, (int)(sin_numbrushsides*sizeof(sin_dbrushside_t)));
	FUNC0("%6i planes       %7i\n"
		,sin_numplanes, (int)(sin_numplanes*sizeof(sin_dplane_t)));
	FUNC0("%6i texinfo      %7i\n"
		,sin_numtexinfo, (int)(sin_numtexinfo*sizeof(sin_texinfo_t)));
#ifdef SIN
	Log_Print("%6i lightinfo    %7i\n"
		,sin_numlightinfo, (int)(sin_numlightinfo*sizeof(sin_lightvalue_t)));
#endif
	FUNC0("%6i entdata      %7i\n", num_entities, sin_entdatasize);

	FUNC0("\n");

	FUNC0("%6i vertexes     %7i\n"
		,sin_numvertexes, (int)(sin_numvertexes*sizeof(sin_dvertex_t)));
	FUNC0("%6i nodes        %7i\n"
		,sin_numnodes, (int)(sin_numnodes*sizeof(sin_dnode_t)));
	FUNC0("%6i faces        %7i\n"
		,sin_numfaces, (int)(sin_numfaces*sizeof(sin_dface_t)));
	FUNC0("%6i leafs        %7i\n"
		,sin_numleafs, (int)(sin_numleafs*sizeof(sin_dleaf_t)));
	FUNC0("%6i leaffaces    %7i\n"
		,sin_numleaffaces, (int)(sin_numleaffaces*sizeof(sin_dleaffaces[0])));
	FUNC0("%6i leafbrushes  %7i\n"
		,sin_numleafbrushes, (int)(sin_numleafbrushes*sizeof(sin_dleafbrushes[0])));
	FUNC0("%6i surfedges    %7i\n"
		,sin_numsurfedges, (int)(sin_numsurfedges*sizeof(sin_dsurfedges[0])));
	FUNC0("%6i edges        %7i\n"
		,sin_numedges, (int)(sin_numedges*sizeof(sin_dedge_t)));
	FUNC0("       lightdata    %7i\n", sin_lightdatasize);
	FUNC0("       visdata      %7i\n", sin_visdatasize);
}