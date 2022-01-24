#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* sunShader; void* flareShader; void* projectionShadowShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIGHTMAP_NONE ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ tr ; 

__attribute__((used)) static void FUNC1( void ) {
	tr.projectionShadowShader = FUNC0( "projectionShadow", LIGHTMAP_NONE, qtrue );
	tr.flareShader = FUNC0( "flareShader", LIGHTMAP_NONE, qtrue );
	tr.sunShader = FUNC0( "sun", LIGHTMAP_NONE, qtrue );
}