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
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BIG_PRIME ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int* FUNC3 (int,int) ; 
 int FUNC4 (int*,int,int,int*,int,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

int FUNC6(int *points, int dim, int numpoints, int *codebook,
                 int numCB, int max_steps, int *closest_cb,
                 AVLFG *rand_state)
{
    int i, k, ret = 0;

    if (numpoints > 24*numCB) {
        /* ELBG is very costly for a big number of points. So if we have a lot
           of them, get a good initial codebook to save on iterations       */
        int *temp_points = FUNC3(dim, (numpoints/8)*sizeof(int));
        if (!temp_points)
            return FUNC0(ENOMEM);
        for (i=0; i<numpoints/8; i++) {
            k = (i*BIG_PRIME) % numpoints;
            FUNC5(temp_points + i*dim, points + k*dim, dim*sizeof(int));
        }

        ret = FUNC6(temp_points, dim, numpoints / 8, codebook,
                               numCB, 2 * max_steps, closest_cb, rand_state);
        if (ret < 0) {
            FUNC2(&temp_points);
            return ret;
        }
        ret = FUNC4(temp_points, dim, numpoints / 8, codebook,
                             numCB, 2 * max_steps, closest_cb, rand_state);
        FUNC1(temp_points);

    } else  // If not, initialize the codebook with random positions
        for (i=0; i < numCB; i++)
            FUNC5(codebook + i*dim, points + ((i*BIG_PRIME)%numpoints)*dim,
                   dim*sizeof(int));
    return ret;
}