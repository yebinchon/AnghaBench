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
struct TYPE_3__ {int width; int height; int /*<<< orphan*/ ** points; } ;
typedef  TYPE_1__ cGrid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( cGrid_t *grid ) {
	int		i, j, k;

	for ( i = 0 ; i < grid->width - 2 ;  ) {
		// grid->points[i][x] is an interpolating control point
		// grid->points[i+1][x] is an aproximating control point
		// grid->points[i+2][x] is an interpolating control point

		//
		// first see if we can collapse the aproximating collumn away
		//
		for ( j = 0 ; j < grid->height ; j++ ) {
			if ( FUNC0( grid->points[i][j], grid->points[i+1][j], grid->points[i+2][j] ) ) {
				break;
			}
		}
		if ( j == grid->height ) {
			// all of the points were close enough to the linear midpoints
			// that we can collapse the entire column away
			for ( j = 0 ; j < grid->height ; j++ ) {
				// remove the column
				for ( k = i + 2 ; k < grid->width ; k++ ) {
					FUNC2( grid->points[k][j], grid->points[k-1][j] );
				}
			}

			grid->width--;

			// go to the next curve segment
			i++;
			continue;
		}

		//
		// we need to subdivide the curve
		//
		for ( j = 0 ; j < grid->height ; j++ ) {
			vec3_t	prev, mid, next;

			// save the control points now
			FUNC2( grid->points[i][j], prev );
			FUNC2( grid->points[i+1][j], mid );
			FUNC2( grid->points[i+2][j], next );

			// make room for two additional columns in the grid
			// columns i+1 will be replaced, column i+2 will become i+4
			// i+1, i+2, and i+3 will be generated
			for ( k = grid->width - 1 ; k > i + 1 ; k-- ) {
				FUNC2( grid->points[k][j], grid->points[k+2][j] );
			}

			// generate the subdivided points
			FUNC1( prev, mid, next, grid->points[i+1][j], grid->points[i+2][j], grid->points[i+3][j] );
		}

		grid->width += 2;

		// the new aproximating point at i+1 may need to be removed
		// or subdivided farther, so don't advance i
	}
}