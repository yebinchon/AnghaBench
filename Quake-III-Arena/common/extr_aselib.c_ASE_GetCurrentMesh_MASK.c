#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aseMesh_t ;
struct TYPE_4__ {size_t currentFrame; int /*<<< orphan*/ * frames; } ;
struct TYPE_5__ {TYPE_1__ anim; } ;
typedef  TYPE_2__ aseGeomObject_t ;
struct TYPE_6__ {size_t currentObject; TYPE_2__* objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t MAX_ASE_ANIMATION_FRAMES ; 
 size_t MAX_ASE_OBJECTS ; 
 TYPE_3__ ase ; 

__attribute__((used)) static aseMesh_t *FUNC1( void )
{
	aseGeomObject_t *pObject;

	if ( ase.currentObject >= MAX_ASE_OBJECTS )
	{
		FUNC0( "Too many GEOMOBJECTs" );
		return 0; // never called
	}

	pObject = &ase.objects[ase.currentObject];

	if ( pObject->anim.currentFrame >= MAX_ASE_ANIMATION_FRAMES )
	{
		FUNC0( "Too many MESHes" );
		return 0;
	}

	return &pObject->anim.frames[pObject->anim.currentFrame];
}