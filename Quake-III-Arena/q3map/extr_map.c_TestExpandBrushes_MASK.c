#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec_t ;
struct TYPE_9__ {size_t planenum; } ;
typedef  TYPE_1__ side_t ;
struct TYPE_10__ {int* normal; int /*<<< orphan*/  dist; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_11__ {int numsides; TYPE_1__* sides; struct TYPE_11__* next; } ;
typedef  TYPE_3__ bspbrush_t ;
struct TYPE_12__ {TYPE_3__* brushes; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*) ; 
 TYPE_5__* entities ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_2__* mapplanes ; 

void FUNC5( void ) {
	side_t	*s;
	int		i, j;
	bspbrush_t	*brush, *list, *copy;
	vec_t	dist;
	plane_t		*plane;

	list = NULL;

	for ( brush = entities[0].brushes ; brush ; brush = brush->next ) {
		copy = FUNC0( brush );
		copy->next = list;
		list = copy;

		// expand all the planes
		for ( i=0 ; i<brush->numsides ; i++ ) {
			s = brush->sides + i;
			plane = &mapplanes[s->planenum];
			dist = plane->dist;
			for (j=0 ; j<3 ; j++) {
				dist += FUNC4( 16 * plane->normal[j] );
			}
			s->planenum = FUNC2( plane->normal, dist );
		}

	}

	FUNC3 ( "expanded.map", entities[0].brushes );

	FUNC1 ("can't proceed after expanding brushes");
}