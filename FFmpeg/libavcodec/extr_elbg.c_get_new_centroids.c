
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dim; int * points; TYPE_2__** cells; } ;
typedef TYPE_1__ elbg_data ;
struct TYPE_5__ {int index; struct TYPE_5__* next; } ;
typedef TYPE_2__ cell ;


 int FFMAX (int,int ) ;
 int FFMIN (int,int ) ;
 int INT_MAX ;

__attribute__((used)) static void get_new_centroids(elbg_data *elbg, int huc, int *newcentroid_i,
                              int *newcentroid_p)
{
    cell *tempcell;
    int *min = newcentroid_i;
    int *max = newcentroid_p;
    int i;

    for (i=0; i< elbg->dim; i++) {
        min[i]=INT_MAX;
        max[i]=0;
    }

    for (tempcell = elbg->cells[huc]; tempcell; tempcell = tempcell->next)
        for(i=0; i<elbg->dim; i++) {
            min[i]=FFMIN(min[i], elbg->points[tempcell->index*elbg->dim + i]);
            max[i]=FFMAX(max[i], elbg->points[tempcell->index*elbg->dim + i]);
        }

    for (i=0; i<elbg->dim; i++) {
        int ni = min[i] + (max[i] - min[i])/3;
        int np = min[i] + (2*(max[i] - min[i]))/3;
        newcentroid_i[i] = ni;
        newcentroid_p[i] = np;
    }
}
