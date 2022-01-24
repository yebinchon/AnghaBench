#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lightmapNum; } ;
typedef  TYPE_1__ dsurface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LIGHTMAP_HEIGHT ; 
 int LIGHTMAP_WIDTH ; 
 int MAX_MAP_LIGHTING ; 
 TYPE_1__* drawSurfaces ; 
 int numDrawSurfaces ; 
 int numLightBytes ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2( void ) {
	int			count;
	int			i;
	dsurface_t	*ds;

	FUNC1 ("--- CountLightmaps ---\n");
	count = 0;
	for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
		// see if this surface is light emiting
		ds = &drawSurfaces[i];
		if ( ds->lightmapNum > count ) {
			count = ds->lightmapNum;
		}
	}

	count++;
	numLightBytes = count * LIGHTMAP_WIDTH * LIGHTMAP_HEIGHT * 3;
	if ( numLightBytes > MAX_MAP_LIGHTING ) {
		FUNC0("MAX_MAP_LIGHTING exceeded");
	}

	FUNC1( "%5i drawSurfaces\n", numDrawSurfaces );
	FUNC1( "%5i lightmaps\n", count );
}