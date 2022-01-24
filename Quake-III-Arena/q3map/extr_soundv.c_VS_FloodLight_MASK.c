#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_16__ {int type; float photons; float* origin; int radiusByDist; double* normal; int /*<<< orphan*/  w; void* insolid; int /*<<< orphan*/  atten_disttype; } ;
typedef  TYPE_1__ vsound_t ;
typedef  float* vec3_t ;
struct TYPE_15__ {float* normal; void* dist; } ;
struct TYPE_17__ {size_t numplanes; float** points; int cluster; int surfaceNum; struct TYPE_17__* clusterTested; struct TYPE_17__* facetTested; void* type; TYPE_13__ endplane; TYPE_13__ farplane; TYPE_13__* planes; } ;
typedef  TYPE_2__ lightvolume_t ;
struct TYPE_18__ {int cluster; } ;
typedef  TYPE_3__ dleaf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,float*,float*) ; 
 void* FUNC1 (float*,float*) ; 
 int /*<<< orphan*/  LDAT_LINEAR ; 
#define  LIGHT_POINTFAKESURFACE 133 
#define  LIGHT_POINTRADIAL 132 
#define  LIGHT_POINTSPOT 131 
#define  LIGHT_SURFACEDIRECTED 130 
#define  LIGHT_SURFACERADIAL 129 
#define  LIGHT_SURFACESPOT 128 
 float MAX_WORLD_COORD ; 
 int /*<<< orphan*/  FUNC2 (float*,double*,float*,float) ; 
 void* VOLUME_NORMAL ; 
 int FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC11 (float*) ; 
 int /*<<< orphan*/  FUNC12 (float*,float*) ; 
 int /*<<< orphan*/  FUNC13 (float*) ; 
 int /*<<< orphan*/  FUNC14 (float*,float,float*,float*) ; 
 int /*<<< orphan*/  FUNC15 (float*,float,float*) ; 
 TYPE_3__* dleafs ; 
 float FUNC16 (float) ; 
 float lightLinearScale ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* qtrue ; 
 float FUNC19 (float) ; 

void FUNC20(vsound_t *light)
{
	lightvolume_t volume;
	dleaf_t *leaf;
	int leafnum, i, j, k, dir[2][4] = {{1, 1, -1, -1}, {1, -1, -1, 1}};
	float a, step, dist, radius, windingdist;
	vec3_t vec, r, p, temp;
	winding_t winding;

	switch(light->type)
	{
		case LIGHT_POINTRADIAL:
		{
			// source is a point
			// light radiates in all directions
			// creates sharp shadows
			//
			// create 6 volumes shining in the axis directions
			// what about: 4 tetrahedrons instead?
			//
			if ( light->atten_disttype == LDAT_LINEAR )
				dist = light->photons * lightLinearScale;
			else
				dist = FUNC19(light->photons);
			//always put the winding at a large distance to avoid epsilon issues
			windingdist = MAX_WORLD_COORD;
			if (dist > windingdist)
				windingdist = dist;
			//
			leafnum = FUNC3(light->origin);
			leaf = &dleafs[leafnum];
			if (leaf->cluster == -1)
			{
				light->insolid = qtrue;
				break;
			}
			// for each axis
			for (i = 0; i < 3; i++)
			{
				// for both directions on the axis
				for (j = -1; j <= 1; j += 2)
				{
					FUNC18(&volume, 0, sizeof(lightvolume_t));
					volume.numplanes = 0;
					for (k = 0; k < 4; k ++)
					{
						volume.points[volume.numplanes][i] = light->origin[i] + j * windingdist;
						volume.points[volume.numplanes][(i+1)%3] = light->origin[(i+1)%3] + dir[0][k] * windingdist;
						volume.points[volume.numplanes][(i+2)%3] = light->origin[(i+2)%3] + dir[1][k] * windingdist;
						volume.numplanes++;
					}
					if (j >= 0)
					{
						FUNC12(volume.points[0], temp);
						FUNC12(volume.points[2], volume.points[0]);
						FUNC12(temp, volume.points[2]);
					}
					for (k = 0; k < volume.numplanes; k++)
					{
						FUNC4(&volume.planes[k], light->origin, volume.points[(k+1)%volume.numplanes], volume.points[k]);
					}
					FUNC12(light->origin, temp);
					temp[i] += (float) j * dist;
					FUNC11(volume.endplane.normal);
					volume.endplane.normal[i] = -j;
					volume.endplane.dist = FUNC1(volume.endplane.normal, temp); //DotProduct(volume.endplane.normal, volume.points[0]);
					volume.farplane = volume.endplane;
					volume.cluster = leaf->cluster;
					volume.surfaceNum = -1;
					volume.type = VOLUME_NORMAL;
					//
					FUNC18(volume.facetTested, 0, sizeof(volume.facetTested));
					FUNC18(volume.clusterTested, 0, sizeof(volume.clusterTested));
					FUNC6(light, &volume, leaf->cluster, 0);
					if (volume.surfaceNum >= 0)
					{
						FUNC5(light, &volume);
					}
				}
			}
			break;
		}
		case LIGHT_POINTSPOT:
		{
			// source is a point
			// light is targetted
			// creates sharp shadows
			//
			// what about using brushes to shape spot lights? that'd be pretty cool
			//
			if ( light->atten_disttype == LDAT_LINEAR )
				dist = light->photons * lightLinearScale;
			else
				dist = FUNC19(light->photons);
			dist *= 2;
			//
			windingdist = 4096;
			if (dist > windingdist)
				windingdist = dist;
			//take 8 times the cone radius because the spotlight also lights outside the cone
			radius = 8 * windingdist * light->radiusByDist;
			//
			FUNC18(&volume, 0, sizeof(lightvolume_t));
			leafnum = FUNC3(light->origin);
			leaf = &dleafs[leafnum];
			if (leaf->cluster == -1)
			{
				light->insolid = qtrue;
				break;
			}
			//
			FUNC11(vec);
			for (i = 0; i < 3; i++)
			{
				if (light->normal[i] > -0.9 && light->normal[i] < 0.9)
				{
					vec[i] = 1;
					break;
				}
			}
			FUNC0(light->normal, vec, r);
			FUNC15(r, radius, p);
			volume.numplanes = 0;
			step = 45;
			for (a = step / 2; a < 360 + step / 2; a += step)
			{
				FUNC2(volume.points[volume.numplanes], light->normal, p, a);
				FUNC10(light->origin, volume.points[volume.numplanes], volume.points[volume.numplanes]);
				FUNC14(volume.points[volume.numplanes], windingdist, light->normal, volume.points[volume.numplanes]);
				volume.numplanes++;
			}
			for (i = 0; i < volume.numplanes; i++)
			{
				FUNC4(&volume.planes[i], light->origin, volume.points[(i+1)%volume.numplanes], volume.points[i]);
			}
			FUNC14(light->origin, dist, light->normal, temp);
			FUNC12(light->normal, volume.endplane.normal);
			FUNC13(volume.endplane.normal);
			volume.endplane.dist = FUNC1(volume.endplane.normal, temp);//DotProduct(volume.endplane.normal, volume.points[0]);
			volume.farplane = volume.endplane;
			volume.cluster = leaf->cluster;
			volume.surfaceNum = -1;
			volume.type = VOLUME_NORMAL;
			//
			FUNC18(volume.facetTested, 0, sizeof(volume.facetTested));
			FUNC18(volume.clusterTested, 0, sizeof(volume.clusterTested));
			FUNC6(light, &volume, leaf->cluster, 0);
			if (volume.surfaceNum >= 0)
			{
				FUNC5(light, &volume);
			}
			break;
		}
		case LIGHT_POINTFAKESURFACE:
		{
			float value;
			int n, axis;
			vec3_t v, vecs[2];

			if ( light->atten_disttype == LDAT_LINEAR )
				dist = light->photons * lightLinearScale;
			else
				dist = FUNC19(light->photons);
			//always put the winding at a large distance to avoid epsilon issues
			windingdist = 4096;
			if (dist > windingdist)
				windingdist = dist;
			//
			FUNC14(light->origin, 0.1, light->normal, light->origin);
			//
			leafnum = FUNC3(light->origin);
			leaf = &dleafs[leafnum];
			if (leaf->cluster == -1)
			{
				light->insolid = qtrue;
				break;
			}
			value = 0;
			for (i = 0; i < 3; i++)
			{
				if (FUNC16(light->normal[i]) > value)
				{
					value = FUNC16(light->normal[i]);
					axis = i;
				}
			}
			for (i = 0; i < 2; i++)
			{
				FUNC11(v);
				v[(axis + 1 + i) % 3] = 1;
				FUNC0(light->normal, v, vecs[i]);
			}
			//cast 4 volumes at the front of the surface
			for (i = -1; i <= 1; i += 2)
			{
				for (j = -1; j <= 1; j += 2)
				{
					for (n = 0; n < 2; n++)
					{
						FUNC18(&volume, 0, sizeof(lightvolume_t));
						volume.numplanes = 3;
						FUNC14(light->origin, i * windingdist, vecs[0], volume.points[(i == j) == n]);
						FUNC14(light->origin, j * windingdist, vecs[1], volume.points[(i != j) == n]);
						FUNC14(light->origin, windingdist, light->normal, volume.points[2]);
						for (k = 0; k < volume.numplanes; k++)
						{
							FUNC4(&volume.planes[k], light->origin, volume.points[(k+1)%volume.numplanes], volume.points[k]);
						}
						FUNC4(&volume.endplane, volume.points[0], volume.points[1], volume.points[2]);
						FUNC14(light->origin, dist, light->normal, temp);
						volume.endplane.dist = FUNC1(volume.endplane.normal, temp);
						if (FUNC1(light->origin, volume.endplane.normal) - volume.endplane.dist > 0)
							break;
					}
					volume.farplane = volume.endplane;
					volume.cluster = leaf->cluster;
					volume.surfaceNum = -1;
					volume.type = VOLUME_NORMAL;
					//
					FUNC18(volume.facetTested, 0, sizeof(volume.facetTested));
					FUNC18(volume.clusterTested, 0, sizeof(volume.clusterTested));

					FUNC6(light, &volume, leaf->cluster, 0);
					if (volume.surfaceNum >= 0)
					{
						FUNC5(light, &volume);
					}
				}
			}
			break;
		}
		case LIGHT_SURFACEDIRECTED:
		{
			// source is an area defined by a winding
			// the light is unidirectional
			// creates sharp shadows
			// for instance sun light or laser light
			//
			FUNC17(&winding, &light->w, sizeof(winding_t));
			FUNC8(light, 0, &winding);
			break;
		}
		case LIGHT_SURFACERADIAL:
		{
			// source is an area defined by a winding
			// the light radiates in all directions at the front of the winding plane
			//
			FUNC17(&winding, &light->w, sizeof(winding_t));
			FUNC9(light, 0, &winding);
			break;
		}
		case LIGHT_SURFACESPOT:
		{
			// source is an area defined by a winding
			// light is targetted but not unidirectional
			//
			FUNC17(&winding, &light->w, sizeof(winding_t));
			FUNC7(light, 0, &winding);
			break;
		}
	}
}