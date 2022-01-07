
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dim; scalar_t__ points; } ;
typedef TYPE_1__ elbg_data ;
struct TYPE_6__ {int index; struct TYPE_6__* next; } ;
typedef TYPE_2__ cell ;


 int INT_MAX ;
 scalar_t__ distance_limited (int*,scalar_t__,int,int ) ;

__attribute__((used)) static int eval_error_cell(elbg_data *elbg, int *centroid, cell *cells)
{
    int error=0;
    for (; cells; cells=cells->next)
        error += distance_limited(centroid, elbg->points + cells->index*elbg->dim, elbg->dim, INT_MAX);

    return error;
}
