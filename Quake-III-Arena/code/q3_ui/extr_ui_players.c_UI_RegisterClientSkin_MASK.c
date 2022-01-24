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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {void* headSkin; void* torsoSkin; void* legsSkin; } ;
typedef  TYPE_1__ playerInfo_t ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 void* FUNC1 (char*) ; 

__attribute__((used)) static qboolean FUNC2( playerInfo_t *pi, const char *modelName, const char *skinName ) {
	char		filename[MAX_QPATH];

	FUNC0( filename, sizeof( filename ), "models/players/%s/lower_%s.skin", modelName, skinName );
	pi->legsSkin = FUNC1( filename );

	FUNC0( filename, sizeof( filename ), "models/players/%s/upper_%s.skin", modelName, skinName );
	pi->torsoSkin = FUNC1( filename );

	FUNC0( filename, sizeof( filename ), "models/players/%s/head_%s.skin", modelName, skinName );
	pi->headSkin = FUNC1( filename );

	if ( !pi->legsSkin || !pi->torsoSkin || !pi->headSkin ) {
		return qfalse;
	}

	return qtrue;
}