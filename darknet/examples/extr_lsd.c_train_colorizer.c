
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_32__ {int n; double learning_rate; double momentum; double decay; int batch; int subdivisions; int* seen; int inputs; int train; scalar_t__ max_batches; float* input_gpu; float* truth_gpu; int truths; float* delta_gpu; float* cost; int c; int h; int w; TYPE_6__* layers; scalar_t__ delta; } ;
typedef TYPE_3__ network ;
struct TYPE_33__ {char** paths; int n; int classes; char** labels; int type; TYPE_7__* d; int m; } ;
typedef TYPE_4__ load_args ;
struct TYPE_34__ {int size; } ;
typedef TYPE_5__ list ;
struct TYPE_35__ {int out_c; int outputs; int batch; float* delta_gpu; scalar_t__ output; int output_gpu; int member_0; } ;
typedef TYPE_6__ layer ;
typedef int image ;
struct TYPE_31__ {int * vals; } ;
struct TYPE_30__ {double** vals; } ;
struct TYPE_36__ {TYPE_2__ X; TYPE_1__ y; } ;
typedef TYPE_7__ data ;
typedef scalar_t__ clock_t ;


 int CLASSIFICATION_DATA ;
 int axpy_gpu (int,int,float*,int,float*,int) ;
 int backward_network_gpu (TYPE_3__*) ;
 char* basecfg (char*) ;
 float* calloc (int,int) ;
 scalar_t__ clock () ;
 TYPE_7__ concat_data (TYPE_7__,TYPE_7__) ;
 int copy_cpu (int,scalar_t__,int,int ,int) ;
 TYPE_7__ copy_data (TYPE_7__) ;
 int copy_gpu (int,int ,int,float*,int) ;
 double cuda_mag_array (float*,int) ;
 float* cuda_make_array (int ,int) ;
 int cuda_push_array (float*,float*,int) ;
 int fill_gpu (int,double,float*,int) ;
 int float_to_image (int ,int ,int ,int ) ;
 int forward_network_gpu (TYPE_3__*) ;
 int free_data (TYPE_7__) ;
 TYPE_4__ get_base_args (TYPE_3__*) ;
 scalar_t__ get_current_batch (TYPE_3__*) ;
 double get_current_rate (TYPE_3__*) ;
 int get_next_batch (TYPE_7__,int,int,float*,int ) ;
 TYPE_5__* get_paths (char*) ;
 int grayscale_image_3c (int ) ;
 int harmless_update_network_gpu (TYPE_3__*) ;
 scalar_t__ list_to_array (TYPE_5__*) ;
 int load_data_in_thread (TYPE_4__) ;
 TYPE_3__* load_network (char*,char*,int) ;
 int printf (char*,...) ;
 int pthread_join (int ,int ) ;
 int save_weights (TYPE_3__*,char*) ;
 int scal_gpu (int,int,float*,int) ;
 int sec (scalar_t__) ;
 int show_image (int ,char*,int) ;
 int sprintf (char*,char*,char*,char*,...) ;
 int srand (int ) ;
 scalar_t__ time ;
 float train_network (TYPE_3__*,TYPE_7__) ;
 int update_network_gpu (TYPE_3__*) ;

void train_colorizer(char *cfg, char *weight, char *acfg, char *aweight, int clear, int display)
{
}
