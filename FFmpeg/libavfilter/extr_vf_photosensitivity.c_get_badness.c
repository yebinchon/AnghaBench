
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__*** grid; } ;
typedef TYPE_1__ PhotosensitivityFrame ;


 int GRID_SIZE ;
 int NUM_CHANNELS ;
 scalar_t__ abs (int) ;

__attribute__((used)) static int get_badness(PhotosensitivityFrame *a, PhotosensitivityFrame *b)
{
    int badness, x, y, c;
    badness = 0;
    for (c = 0; c < NUM_CHANNELS; c++) {
        for (y = 0; y < GRID_SIZE; y++) {
            for (x = 0; x < GRID_SIZE; x++) {
                badness += abs((int)a->grid[y][x][c] - (int)b->grid[y][x][c]);


            }
        }
    }
    return badness;
}
