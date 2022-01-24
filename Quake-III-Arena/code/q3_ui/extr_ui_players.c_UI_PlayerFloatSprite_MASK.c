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
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int* origin; int radius; scalar_t__ renderfx; int /*<<< orphan*/  customShader; int /*<<< orphan*/  reType; } ;
typedef  TYPE_1__ refEntity_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
typedef  int /*<<< orphan*/  playerInfo_t ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int /*<<< orphan*/  RT_SPRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3( playerInfo_t *pi, vec3_t origin, qhandle_t shader ) {
	refEntity_t		ent;

	FUNC1( &ent, 0, sizeof( ent ) );
	FUNC0( origin, ent.origin );
	ent.origin[2] += 48;
	ent.reType = RT_SPRITE;
	ent.customShader = shader;
	ent.radius = 10;
	ent.renderfx = 0;
	FUNC2( &ent );
}