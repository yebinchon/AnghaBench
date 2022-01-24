#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ numvolumes; } ;
struct TYPE_3__ {scalar_t__ insolid; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  VS_FloodLightThread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/ * entities ; 
 int /*<<< orphan*/  lightAmbientColor ; 
 TYPE_2__** lsurfaceTest ; 
 int numDrawSurfaces ; 
 int numvsounds ; 
 int /*<<< orphan*/  qtrue ; 
 int radiosity ; 
 int radiosity_scale ; 
 TYPE_1__** vsounds ; 

void FUNC8(void)
{
	int i, numcastedvolumes, numvsoundsinsolid;
	float f;

	// find the optional world ambient
	FUNC1( &entities[0], "_color", lightAmbientColor );
	f = FUNC0( &entities[0], "ambient" );
	FUNC6( lightAmbientColor, f, lightAmbientColor );
	/*
	_printf("\r%6d lights out of %d", 0, numvsounds);
	for (i = 0; i < numvsounds; i++)
	{
		_printf("\r%6d", i);
		VS_FloodLight(vsounds[i]);
	}
	_printf("\r%6d lights out of %d\n", i, numvsounds);
	*/
	FUNC7("%7i lights\n", numvsounds);
	FUNC2( numvsounds, qtrue, VS_FloodLightThread );

	numcastedvolumes = 0;
	for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
		if (lsurfaceTest[i])
			numcastedvolumes += lsurfaceTest[i]->numvolumes;
	}
	FUNC7("%7i light volumes casted\n", numcastedvolumes);
	numvsoundsinsolid = 0;
	for (i = 0; i < numvsounds; i++)
	{
		if (vsounds[i]->insolid)
			numvsoundsinsolid++;
	}
	FUNC7("%7i lights in solid\n", numvsoundsinsolid);
	//
	radiosity_scale = 1;
	for (i = 0; i < radiosity; i++) {
		FUNC4();
		radiosity_scale <<= 1;
	}
	//
	FUNC5();
	// redo surfaces with the old light algorithm when needed
	FUNC3();
}