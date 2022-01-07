
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int network ;
typedef int matrix ;
struct TYPE_4__ {int y; } ;
typedef TYPE_1__ data ;


 int free_matrix (int ) ;
 float matrix_topk_accuracy (int ,int ,int) ;
 int network_predict_data_multi (int *,TYPE_1__,int) ;

float network_accuracy_multi(network *net, data d, int n)
{
    matrix guess = network_predict_data_multi(net, d, n);
    float acc = matrix_topk_accuracy(d.y, guess,1);
    free_matrix(guess);
    return acc;
}
