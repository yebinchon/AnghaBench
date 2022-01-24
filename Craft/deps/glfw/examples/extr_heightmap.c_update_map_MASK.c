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
typedef  float GLfloat ;

/* Variables and functions */
 size_t MAP_NUM_TOTAL_VERTICES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,float*,float*) ; 
 float** map_vertices ; 
 float FUNC4 (float) ; 

__attribute__((used)) static void FUNC5(int num_iter)
{
    FUNC0(num_iter > 0);
    while(num_iter)
    {
        /* center of the circle */
        float center_x;
        float center_z;
        float circle_size;
        float disp;
        size_t ii;
        FUNC3(&center_x, &center_z, &circle_size, &disp);
        disp = disp / 2.0f;
        for (ii = 0u ; ii < MAP_NUM_TOTAL_VERTICES ; ++ii)
        {
            GLfloat dx = center_x - map_vertices[0][ii];
            GLfloat dz = center_z - map_vertices[2][ii];
            GLfloat pd = (2.0f * FUNC4((dx * dx) + (dz * dz))) / circle_size;
            if (FUNC2(pd) <= 1.0f)
            {
                /* tx,tz is within the circle */
                GLfloat new_height = disp + (float) (FUNC1(pd*3.14f)*disp);
                map_vertices[1][ii] += new_height;
            }
        }
        --num_iter;
    }
}