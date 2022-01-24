#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int width; int height; void* verts; } ;
typedef  TYPE_1__ mesh_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 

mesh_t *FUNC2( mesh_t *mesh ) {
	mesh_t	*out;
	int		size;

	out = FUNC0( sizeof( *out ) );
	out->width = mesh->width;
	out->height = mesh->height;

	size = out->width * out->height * sizeof( *out->verts );
	out->verts = FUNC0( size );
	FUNC1( out->verts, mesh->verts, size );

	return out;
}