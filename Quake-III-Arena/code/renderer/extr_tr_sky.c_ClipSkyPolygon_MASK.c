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
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float*) ; 
 float FUNC1 (float*,float*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_CLIP_VERTS ; 
 float ON_EPSILON ; 
#define  SIDE_BACK 130 
#define  SIDE_FRONT 129 
#define  SIDE_ON 128 
 int /*<<< orphan*/  FUNC2 (float*,float*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ ri ; 
 float** sky_clip ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4 (int nump, vec3_t vecs, int stage) 
{
	float	*norm;
	float	*v;
	qboolean	front, back;
	float	d, e;
	float	dists[MAX_CLIP_VERTS];
	int		sides[MAX_CLIP_VERTS];
	vec3_t	newv[2][MAX_CLIP_VERTS];
	int		newc[2];
	int		i, j;

	if (nump > MAX_CLIP_VERTS-2)
		ri.Error (ERR_DROP, "ClipSkyPolygon: MAX_CLIP_VERTS");
	if (stage == 6)
	{	// fully clipped, so draw it
		FUNC0 (nump, vecs);
		return;
	}

	front = back = qfalse;
	norm = sky_clip[stage];
	for (i=0, v = vecs ; i<nump ; i++, v+=3)
	{
		d = FUNC1 (v, norm);
		if (d > ON_EPSILON)
		{
			front = qtrue;
			sides[i] = SIDE_FRONT;
		}
		else if (d < -ON_EPSILON)
		{
			back = qtrue;
			sides[i] = SIDE_BACK;
		}
		else
			sides[i] = SIDE_ON;
		dists[i] = d;
	}

	if (!front || !back)
	{	// not clipped
		FUNC4 (nump, vecs, stage+1);
		return;
	}

	// clip it
	sides[i] = sides[0];
	dists[i] = dists[0];
	FUNC2 (vecs, (vecs+(i*3)) );
	newc[0] = newc[1] = 0;

	for (i=0, v = vecs ; i<nump ; i++, v+=3)
	{
		switch (sides[i])
		{
		case SIDE_FRONT:
			FUNC2 (v, newv[0][newc[0]]);
			newc[0]++;
			break;
		case SIDE_BACK:
			FUNC2 (v, newv[1][newc[1]]);
			newc[1]++;
			break;
		case SIDE_ON:
			FUNC2 (v, newv[0][newc[0]]);
			newc[0]++;
			FUNC2 (v, newv[1][newc[1]]);
			newc[1]++;
			break;
		}

		if (sides[i] == SIDE_ON || sides[i+1] == SIDE_ON || sides[i+1] == sides[i])
			continue;

		d = dists[i] / (dists[i] - dists[i+1]);
		for (j=0 ; j<3 ; j++)
		{
			e = v[j] + d*(v[j+3] - v[j]);
			newv[0][newc[0]][j] = e;
			newv[1][newc[1]][j] = e;
		}
		newc[0]++;
		newc[1]++;
	}

	// continue
	FUNC4 (newc[0], newv[0][0], stage+1);
	FUNC4 (newc[1], newv[1][0], stage+1);
}