
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rows; int cols; } ;
typedef TYPE_1__ matrix ;
struct TYPE_9__ {int y; } ;
typedef TYPE_2__ data ;


 TYPE_1__ csv_to_matrix (char*) ;
 int fprintf (int ,char*,double,...) ;
 int free_data (TYPE_2__) ;
 int free_matrix (TYPE_1__) ;
 TYPE_2__ load_cifar10_data (char*) ;
 double matrix_topk_accuracy (int ,TYPE_1__,int) ;
 int stderr ;

void eval_cifar_csv()
{
    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");

    matrix pred = csv_to_matrix("results/combined.csv");
    fprintf(stderr, "%d %d\n", pred.rows, pred.cols);

    fprintf(stderr, "Accuracy: %f\n", matrix_topk_accuracy(test.y, pred, 1));
    free_data(test);
    free_matrix(pred);
}
