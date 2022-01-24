#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trRefEntity_t ;
typedef  int /*<<< orphan*/  shader_t ;
struct TYPE_7__ {int ofsEnd; int /*<<< orphan*/  shaderIndex; } ;
typedef  TYPE_2__ md4Surface_t ;
struct TYPE_8__ {int ofsSurfaces; int numSurfaces; } ;
typedef  TYPE_3__ md4LOD_t ;
struct TYPE_9__ {int ofsLODs; } ;
typedef  TYPE_4__ md4Header_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_10__ {TYPE_1__* currentModel; } ;
struct TYPE_6__ {TYPE_4__* md4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_5__ tr ; 

void FUNC2( trRefEntity_t *ent ) {
	md4Header_t		*header;
	md4Surface_t	*surface;
	md4LOD_t		*lod;
	shader_t		*shader;
	int				i;

	header = tr.currentModel->md4;
	lod = (md4LOD_t *)( (byte *)header + header->ofsLODs );

	surface = (md4Surface_t *)( (byte *)lod + lod->ofsSurfaces );
	for ( i = 0 ; i < lod->numSurfaces ; i++ ) {
		shader = FUNC1( surface->shaderIndex );
		FUNC0( (void *)surface, shader, 0 /*fogNum*/, qfalse );
		surface = (md4Surface_t *)( (byte *)surface + surface->ofsEnd );
	}
}