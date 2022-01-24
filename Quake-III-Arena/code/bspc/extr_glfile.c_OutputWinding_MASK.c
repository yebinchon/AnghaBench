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
struct TYPE_3__ {int numpoints; double** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  double vec_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1 (winding_t *w, FILE *glview)
{
	static	int	level = 128;
	vec_t		light;
	int			i;

	FUNC0 (glview, "%i\n", w->numpoints);
	level+=28;
	light = (level&255)/255.0;
	for (i=0 ; i<w->numpoints ; i++)
	{
		FUNC0 (glview, "%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f\n",
			w->p[i][0],
			w->p[i][1],
			w->p[i][2],
			light,
			light,
			light);
	}
	FUNC0 (glview, "\n");
}