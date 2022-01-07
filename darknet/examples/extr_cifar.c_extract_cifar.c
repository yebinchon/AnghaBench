
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int image ;
struct TYPE_7__ {int * vals; } ;
struct TYPE_6__ {int rows; int * vals; } ;
struct TYPE_8__ {TYPE_2__ y; TYPE_1__ X; } ;
typedef TYPE_3__ data ;


 int PNG ;
 int float_to_image (int,int,int,int ) ;
 TYPE_3__ load_all_cifar10 () ;
 TYPE_3__ load_cifar10_data (char*) ;
 int max_index (int ,int) ;
 int save_image_options (int ,char*,int ,int ) ;
 int sprintf (char*,char*,int,char*) ;

void extract_cifar()
{
char *labels[] = {"airplane","automobile","bird","cat","deer","dog","frog","horse","ship","truck"};
    int i;
    data train = load_all_cifar10();
    data test = load_cifar10_data("data/cifar/cifar-10-batches-bin/test_batch.bin");
    for(i = 0; i < train.X.rows; ++i){
        image im = float_to_image(32, 32, 3, train.X.vals[i]);
        int class = max_index(train.y.vals[i], 10);
        char buff[256];
        sprintf(buff, "data/cifar/train/%d_%s",i,labels[class]);
        save_image_options(im, buff, PNG, 0);
    }
    for(i = 0; i < test.X.rows; ++i){
        image im = float_to_image(32, 32, 3, test.X.vals[i]);
        int class = max_index(test.y.vals[i], 10);
        char buff[256];
        sprintf(buff, "data/cifar/test/%d_%s",i,labels[class]);
        save_image_options(im, buff, PNG, 0);
    }
}
