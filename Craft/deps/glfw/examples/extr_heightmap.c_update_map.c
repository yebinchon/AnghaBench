
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;


 size_t MAP_NUM_TOTAL_VERTICES ;
 int assert (int) ;
 float cos (float) ;
 float fabs (float) ;
 int generate_heightmap__circle (float*,float*,float*,float*) ;
 float** map_vertices ;
 float sqrtf (float) ;

__attribute__((used)) static void update_map(int num_iter)
{
    assert(num_iter > 0);
    while(num_iter)
    {

        float center_x;
        float center_z;
        float circle_size;
        float disp;
        size_t ii;
        generate_heightmap__circle(&center_x, &center_z, &circle_size, &disp);
        disp = disp / 2.0f;
        for (ii = 0u ; ii < MAP_NUM_TOTAL_VERTICES ; ++ii)
        {
            GLfloat dx = center_x - map_vertices[0][ii];
            GLfloat dz = center_z - map_vertices[2][ii];
            GLfloat pd = (2.0f * sqrtf((dx * dx) + (dz * dz))) / circle_size;
            if (fabs(pd) <= 1.0f)
            {

                GLfloat new_height = disp + (float) (cos(pd*3.14f)*disp);
                map_vertices[1][ii] += new_height;
            }
        }
        --num_iter;
    }
}
