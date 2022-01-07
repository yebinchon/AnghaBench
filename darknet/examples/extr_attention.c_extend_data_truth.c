
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rows; float** vals; int cols; } ;
struct TYPE_5__ {TYPE_1__ y; } ;
typedef TYPE_2__ data ;


 float* realloc (float*,int) ;

void extend_data_truth(data *d, int n, float val)
{
    int i, j;
    for(i = 0; i < d->y.rows; ++i){
        d->y.vals[i] = realloc(d->y.vals[i], (d->y.cols+n)*sizeof(float));
        for(j = 0; j < n; ++j){
            d->y.vals[i][d->y.cols + j] = val;
        }
    }
    d->y.cols += n;
}
