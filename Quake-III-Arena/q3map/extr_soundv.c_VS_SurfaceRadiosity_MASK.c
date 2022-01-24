#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {double photons; int /*<<< orphan*/  type; int /*<<< orphan*/  color; int /*<<< orphan*/  origin; } ;
typedef  TYPE_4__ vsound_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  shaderInfo_t ;
struct TYPE_18__ {int width; TYPE_1__* verts; } ;
typedef  TYPE_5__ mesh_t ;
struct TYPE_19__ {int /*<<< orphan*/  mutex; TYPE_3__* facets; TYPE_5__* detailMesh; } ;
typedef  TYPE_6__ lsurfaceTest_t ;
struct TYPE_20__ {int lightmapNum; scalar_t__ surfaceType; size_t shaderNum; int lightmapWidth; int lightmapHeight; int lightmapY; int lightmapX; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; } ;
typedef  TYPE_7__ dsurface_t ;
struct TYPE_15__ {int /*<<< orphan*/  normal; } ;
struct TYPE_16__ {TYPE_2__ plane; } ;
struct TYPE_14__ {int /*<<< orphan*/  normal; int /*<<< orphan*/  xyz; } ;
struct TYPE_13__ {int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ) ; 
 int LIGHTMAP_HEIGHT ; 
 int LIGHTMAP_WIDTH ; 
 int /*<<< orphan*/  LIGHT_POINTRADIAL ; 
 scalar_t__ MST_PATCH ; 
 scalar_t__ MST_TRIANGLE_SOUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC6 (float*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* drawSurfaces ; 
 TYPE_10__* dshaders ; 
 float* lightFloats ; 
 double lightPointScale ; 
 float* lightmappixelarea ; 
 TYPE_6__** lsurfaceTest ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 float* oldLightFloats ; 
 float radiosity_scale ; 

void FUNC9( int num ) {
	dsurface_t		*ds;
	mesh_t			*mesh;
	shaderInfo_t	*si;
	lsurfaceTest_t *test;
	int x, y, k;
	vec3_t base, normal;
	float *color, area;
	vsound_t vsound;

	ds = &drawSurfaces[num];

	if ( ds->lightmapNum < 0 ) {
		return;		// doesn't have a lightmap
	}

	// vertex-lit triangle model
	if ( ds->surfaceType == MST_TRIANGLE_SOUP ) {
		return;
	}

	si = FUNC3( dshaders[ ds->shaderNum].shader );
	test = lsurfaceTest[ num ];

	if (!test) {
		return;
	}

	for (x = 0; x < ds->lightmapWidth; x++) {
		for (y = 0; y < ds->lightmapHeight; y++) {
			//
			k = ( ds->lightmapNum * LIGHTMAP_HEIGHT + ds->lightmapY + y) 
							* LIGHTMAP_WIDTH + ds->lightmapX + x;
			area = lightmappixelarea[k];
			if (area <= 0)
				continue;
			//
			if (ds->surfaceType == MST_PATCH)
			{
				mesh = test->detailMesh;
				FUNC5( mesh->verts[y*mesh->width+x].xyz, base);
				FUNC5( mesh->verts[y*mesh->width+x].normal, normal);
			}
			else
			{
				FUNC7(ds->lightmapOrigin, (float) x, ds->lightmapVecs[0], base);
				FUNC7(base, (float) y, ds->lightmapVecs[1], base);
				FUNC5(test->facets[0].plane.normal, normal);
			}
			// create ligth from base
			FUNC8(&vsound, 0, sizeof(vsound_t));
			color = &oldLightFloats[k*3];
			// a few units away from the surface
			FUNC7(base, 5, normal, vsound.origin);
			FUNC0(color, vsound.color);
			// ok this is crap
			vsound.photons = FUNC6(color) * 0.05 * lightPointScale / (area * radiosity_scale);
			// what about using a front facing light only ?
			vsound.type = LIGHT_POINTRADIAL;
			// flood the light from this lightmap pixel
			FUNC4(&vsound);
			// only one thread at a time may write to the lightmap of this surface
			FUNC1(test->mutex);
			// don't light the lightmap pixel itself
			lightFloats[k*3] = oldLightFloats[k*3];
			lightFloats[k*3+1] = oldLightFloats[k*3+1];
			lightFloats[k*3+2] = oldLightFloats[k*3+2];
			//
			FUNC2(test->mutex);
		}
	}
}