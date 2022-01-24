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
 int /*<<< orphan*/ * q3_dbrushes ; 
 int /*<<< orphan*/ * q3_dbrushsides ; 
 int /*<<< orphan*/ * q3_dentdata ; 
 int /*<<< orphan*/ * q3_dfogs ; 
 int /*<<< orphan*/ * q3_dleafbrushes ; 
 int /*<<< orphan*/ * q3_dleafs ; 
 int /*<<< orphan*/ * q3_dleafsurfaces ; 
 int /*<<< orphan*/ * q3_dmodels ; 
 int /*<<< orphan*/ * q3_dnodes ; 
 int /*<<< orphan*/ * q3_dplanes ; 
 int /*<<< orphan*/ * q3_drawIndexes ; 
 int /*<<< orphan*/ * q3_drawSurfaces ; 
 int /*<<< orphan*/ * q3_drawVerts ; 
 int /*<<< orphan*/ * q3_dshaders ; 
 scalar_t__ q3_entdatasize ; 
 int /*<<< orphan*/ * q3_gridData ; 
 int /*<<< orphan*/ * q3_lightBytes ; 
 scalar_t__ q3_numDrawIndexes ; 
 scalar_t__ q3_numDrawSurfaces ; 
 scalar_t__ q3_numDrawVerts ; 
 scalar_t__ q3_numFogs ; 
 scalar_t__ q3_numGridPoints ; 
 scalar_t__ q3_numLightBytes ; 
 scalar_t__ q3_numShaders ; 
 scalar_t__ q3_numVisBytes ; 
 scalar_t__ q3_numbrushes ; 
 scalar_t__ q3_numbrushsides ; 
 scalar_t__ q3_numleafbrushes ; 
 scalar_t__ q3_numleafs ; 
 scalar_t__ q3_numleafsurfaces ; 
 scalar_t__ q3_nummodels ; 
 scalar_t__ q3_numnodes ; 
 scalar_t__ q3_numplanes ; 
 int /*<<< orphan*/ * q3_visBytes ; 

void FUNC1(void)
{
	if (q3_dmodels) FUNC0(q3_dmodels);
	q3_dmodels = NULL;
	q3_nummodels = 0;
	if (q3_dshaders) FUNC0(q3_dshaders);
	q3_dshaders = NULL;
	q3_numShaders = 0;
	if (q3_dentdata) FUNC0(q3_dentdata);
	q3_dentdata = NULL;
	q3_entdatasize = 0;
	if (q3_dleafs) FUNC0(q3_dleafs);
	q3_dleafs = NULL;
	q3_numleafs = 0;
	if (q3_dplanes) FUNC0(q3_dplanes);
	q3_dplanes = NULL;
	q3_numplanes = 0;
	if (q3_dnodes) FUNC0(q3_dnodes);
	q3_dnodes = NULL;
	q3_numnodes = 0;
	if (q3_dleafsurfaces) FUNC0(q3_dleafsurfaces);
	q3_dleafsurfaces = NULL;
	q3_numleafsurfaces = 0;
	if (q3_dleafbrushes) FUNC0(q3_dleafbrushes);
	q3_dleafbrushes = NULL;
	q3_numleafbrushes = 0;
	if (q3_dbrushes) FUNC0(q3_dbrushes);
	q3_dbrushes = NULL;
	q3_numbrushes = 0;
	if (q3_dbrushsides) FUNC0(q3_dbrushsides);
	q3_dbrushsides = NULL;
	q3_numbrushsides = 0;
	if (q3_lightBytes) FUNC0(q3_lightBytes);
	q3_lightBytes = NULL;
	q3_numLightBytes = 0;
	if (q3_gridData) FUNC0(q3_gridData);
	q3_gridData = NULL;
	q3_numGridPoints = 0;
	if (q3_visBytes) FUNC0(q3_visBytes);
	q3_visBytes = NULL;
	q3_numVisBytes = 0;
	if (q3_drawVerts) FUNC0(q3_drawVerts);
	q3_drawVerts = NULL;
	q3_numDrawVerts = 0;
	if (q3_drawIndexes) FUNC0(q3_drawIndexes);
	q3_drawIndexes = NULL;
	q3_numDrawIndexes = 0;
	if (q3_drawSurfaces) FUNC0(q3_drawSurfaces);
	q3_drawSurfaces = NULL;
	q3_numDrawSurfaces = 0;
	if (q3_dfogs) FUNC0(q3_dfogs);
	q3_dfogs = NULL;
	q3_numFogs = 0;
}