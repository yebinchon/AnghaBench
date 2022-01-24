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
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  wrapHeight; int /*<<< orphan*/  wrapWidth; int /*<<< orphan*/ ** points; } ;
typedef  TYPE_1__ cGrid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( cGrid_t *grid ) {
	int			i, j, l;
	vec3_t		temp;
	qboolean	tempWrap;

	if ( grid->width > grid->height ) {
		for ( i = 0 ; i < grid->height ; i++ ) {
			for ( j = i + 1 ; j < grid->width ; j++ ) {
				if ( j < grid->height ) {
					// swap the value
					FUNC0( grid->points[i][j], temp );
					FUNC0( grid->points[j][i], grid->points[i][j] );
					FUNC0( temp, grid->points[j][i] );
				} else {
					// just copy
					FUNC0( grid->points[j][i], grid->points[i][j] );
				}
			}
		}
	} else {
		for ( i = 0 ; i < grid->width ; i++ ) {
			for ( j = i + 1 ; j < grid->height ; j++ ) {
				if ( j < grid->width ) {
					// swap the value
					FUNC0( grid->points[j][i], temp );
					FUNC0( grid->points[i][j], grid->points[j][i] );
					FUNC0( temp, grid->points[i][j] );
				} else {
					// just copy
					FUNC0( grid->points[i][j], grid->points[j][i] );
				}
			}
		}
	}

	l = grid->width;
	grid->width = grid->height;
	grid->height = l;

	tempWrap = grid->wrapWidth;
	grid->wrapWidth = grid->wrapHeight;
	grid->wrapHeight = tempWrap;
}