
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ANIMATION_SPEED ;
 int GRIDH ;
 int GRIDW ;
 double** ax ;
 double** ay ;
 double dt ;
 double** p ;
 double** vx ;
 double** vy ;

void calc_grid(void)
{
    int x, y, x2, y2;
    double time_step = dt * ANIMATION_SPEED;


    for (x = 0; x < GRIDW; x++)
    {
        x2 = (x + 1) % GRIDW;
        for(y = 0; y < GRIDH; y++)
            ax[x][y] = p[x][y] - p[x2][y];
    }

    for (y = 0; y < GRIDH; y++)
    {
        y2 = (y + 1) % GRIDH;
        for(x = 0; x < GRIDW; x++)
            ay[x][y] = p[x][y] - p[x][y2];
    }


    for (x = 0; x < GRIDW; x++)
    {
        for (y = 0; y < GRIDH; y++)
        {
            vx[x][y] = vx[x][y] + ax[x][y] * time_step;
            vy[x][y] = vy[x][y] + ay[x][y] * time_step;
        }
    }


    for (x = 1; x < GRIDW; x++)
    {
        x2 = x - 1;
        for (y = 1; y < GRIDH; y++)
        {
            y2 = y - 1;
            p[x][y] = p[x][y] + (vx[x2][y] - vx[x][y] + vy[x][y2] - vy[x][y]) * time_step;
        }
    }
}
