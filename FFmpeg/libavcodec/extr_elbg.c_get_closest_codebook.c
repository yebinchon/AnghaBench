
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numCB; int dim; scalar_t__ codebook; } ;
typedef TYPE_1__ elbg_data ;


 int INT_MAX ;
 int distance_limited (scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static int get_closest_codebook(elbg_data *elbg, int index)
{
    int i, pick=0, diff, diff_min = INT_MAX;
    for (i=0; i<elbg->numCB; i++)
        if (i != index) {
            diff = distance_limited(elbg->codebook + i*elbg->dim, elbg->codebook + index*elbg->dim, elbg->dim, diff_min);
            if (diff < diff_min) {
                pick = i;
                diff_min = diff;
            }
        }
    return pick;
}
