#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {float* angles; int /*<<< orphan*/  origin; } ;
struct TYPE_6__ {int /*<<< orphan*/  bmodel; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef  TYPE_3__ sharedEntity_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int MAX_GENTITIES ; 
 int FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int) ; 
 float* vec3_origin ; 

int FUNC5( const vec3_t p, int passEntityNum ) {
	int			touch[MAX_GENTITIES];
	sharedEntity_t *hit;
	int			i, num;
	int			contents, c2;
	clipHandle_t	clipHandle;
	float		*angles;

	// get base contents from world
	contents = FUNC0( p, 0 );

	// or in contents from all the other entities
	num = FUNC2( p, p, touch, MAX_GENTITIES );

	for ( i=0 ; i<num ; i++ ) {
		if ( touch[i] == passEntityNum ) {
			continue;
		}
		hit = FUNC4( touch[i] );
		// might intersect, so do an exact clip
		clipHandle = FUNC3( hit );
		angles = hit->s.angles;
		if ( !hit->r.bmodel ) {
			angles = vec3_origin;	// boxes don't rotate
		}

		c2 = FUNC1 (p, clipHandle, hit->s.origin, hit->s.angles);

		contents |= c2;
	}

	return contents;
}