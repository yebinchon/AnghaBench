
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; } ;
struct TYPE_17__ {int hierarchy; int outputs; int h; int w; } ;
typedef TYPE_1__ network ;
typedef int list ;
struct TYPE_18__ {double h; int data; } ;
typedef TYPE_2__ image ;


 char* basecfg (char*) ;
 int* calloc (int,int) ;
 int draw_label (TYPE_2__,int,int,TYPE_2__,float*) ;
 int error (char*) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ get_image_from_stream (void*) ;
 TYPE_2__ get_label (TYPE_2__**,char*,int) ;
 char** get_labels (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int hierarchy_predictions (float*,int ,int ,int,int) ;
 TYPE_2__ letterbox_image (TYPE_2__,int ,int ) ;
 TYPE_2__** load_alphabet () ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,int ) ;
 void* open_video_stream (char const*,int,int,int,int ) ;
 int option_find_int (int *,char*,int) ;
 char* option_find_str (int *,char*,char*) ;
 int printf (char*,...) ;
 int * read_data_cfg (char*) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_2__,char*,int) ;
 int sprintf (char*,char*,float,char*) ;
 int srand (int) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int top_predictions (TYPE_1__*,int,int*) ;

void demo_classifier(char *datacfg, char *cfgfile, char *weightfile, int cam_index, const char *filename)
{
}
