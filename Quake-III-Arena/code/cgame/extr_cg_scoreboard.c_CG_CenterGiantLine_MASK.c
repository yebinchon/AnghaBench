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
typedef  int* vec4_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,char const*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  GIANT_HEIGHT ; 
 int GIANT_WIDTH ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC2( float y, const char *string ) {
	float		x;
	vec4_t		color;

	color[0] = 1;
	color[1] = 1;
	color[2] = 1;
	color[3] = 1;

	x = 0.5 * ( 640 - GIANT_WIDTH * FUNC1( string ) );

	FUNC0( x, y, string, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
}