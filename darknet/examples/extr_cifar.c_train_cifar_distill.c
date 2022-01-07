
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {double learning_rate; double momentum; double decay; int* seen; int max_batches; } ;
typedef TYPE_1__ network ;
typedef int matrix ;
struct TYPE_13__ {int y; } ;
typedef TYPE_2__ data ;
typedef scalar_t__ clock_t ;


 char* basecfg (char*) ;
 scalar_t__ clock () ;
 int csv_to_matrix (char*) ;
 int free (char*) ;
 int free_data (TYPE_2__) ;
 int free_network (TYPE_1__*) ;
 int free_ptrs (void**,int) ;
 int get_current_batch (TYPE_1__*) ;
 int get_current_rate (TYPE_1__*) ;
 char** get_labels (char*) ;
 TYPE_2__ load_all_cifar10 () ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int matrix_add_matrix (int ,int ) ;
 int printf (char*,...) ;
 int save_weights (TYPE_1__*,char*) ;
 int scale_matrix (int ,int) ;
 int sec (scalar_t__) ;
 int sprintf (char*,char*,char*,char*,...) ;
 int srand (int ) ;
 int time (int ) ;
 float train_network_sgd (TYPE_1__*,TYPE_2__,int) ;

void train_cifar_distill(char *cfgfile, char *weightfile)
{
    srand(time(0));
    float avg_loss = -1;
    char *base = basecfg(cfgfile);
    printf("%s\n", base);
    network *net = load_network(cfgfile, weightfile, 0);
    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);

    char *backup_directory = "/home/pjreddie/backup/";
    int classes = 10;
    int N = 50000;

    char **labels = get_labels("data/cifar/labels.txt");
    int epoch = (*net->seen)/N;

    data train = load_all_cifar10();
    matrix soft = csv_to_matrix("results/ensemble.csv");

    float weight = .9;
    scale_matrix(soft, weight);
    scale_matrix(train.y, 1. - weight);
    matrix_add_matrix(soft, train.y);

    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
        clock_t time=clock();

        float loss = train_network_sgd(net, train, 1);
        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.95 + loss*.05;
        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), sec(clock()-time), *net->seen);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            sprintf(buff, "%s/%s_%d.weights",backup_directory,base, epoch);
            save_weights(net, buff);
        }
        if(get_current_batch(net)%100 == 0){
            char buff[256];
            sprintf(buff, "%s/%s.backup",backup_directory,base);
            save_weights(net, buff);
        }
    }
    char buff[256];
    sprintf(buff, "%s/%s.weights", backup_directory, base);
    save_weights(net, buff);

    free_network(net);
    free_ptrs((void**)labels, classes);
    free(base);
    free_data(train);
}
