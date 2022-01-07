
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int network ;
typedef int matrix ;
typedef int image ;
struct TYPE_6__ {int rows; int * vals; } ;
struct TYPE_7__ {int y; TYPE_1__ X; } ;
typedef TYPE_2__ data ;


 int flip_image (int ) ;
 int float_to_image (int,int,int,int ) ;
 int fprintf (int ,char*,double) ;
 int free_data (TYPE_2__) ;
 TYPE_2__ load_cifar10_data (char*) ;
 int * load_network (char*,char*,int ) ;
 int matrix_add_matrix (int ,int ) ;
 int matrix_to_csv (int ) ;
 double matrix_topk_accuracy (int ,int ,int) ;
 int network_predict_data (int *,TYPE_2__) ;
 int scale_matrix (int ,double) ;
 int srand (int ) ;
 int stderr ;
 int time (int ) ;

void test_cifar_csv(char *filename, char *weightfile)
{
    network *net = load_network(filename, weightfile, 0);
    srand(time(0));

    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");

    matrix pred = network_predict_data(net, test);

    int i;
    for(i = 0; i < test.X.rows; ++i){
        image im = float_to_image(32, 32, 3, test.X.vals[i]);
        flip_image(im);
    }
    matrix pred2 = network_predict_data(net, test);
    scale_matrix(pred, .5);
    scale_matrix(pred2, .5);
    matrix_add_matrix(pred2, pred);

    matrix_to_csv(pred);
    fprintf(stderr, "Accuracy: %f\n", matrix_topk_accuracy(test.y, pred, 1));
    free_data(test);
}
