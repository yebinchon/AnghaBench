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
typedef  int /*<<< orphan*/  shaderInfo_t ;

/* Variables and functions */
 int MAX_QPATH ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,int,...) ; 

shaderInfo_t *FUNC2( int minlayer, int maxlayer, const char *shadername ) {
	char	shader[ MAX_QPATH ];

	if ( minlayer == maxlayer ) {
		FUNC1( shader, "textures/%s_%d", shadername, maxlayer );
	} else {
		FUNC1( shader, "textures/%s_%dto%d", shadername, minlayer, maxlayer );
	}

	return FUNC0( shader );
}