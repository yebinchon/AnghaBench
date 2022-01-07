
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; } ;
struct TYPE_12__ {int h; int w; } ;
typedef TYPE_1__ network ;
typedef int list ;
struct TYPE_13__ {int data; } ;
typedef TYPE_2__ image ;


 TYPE_2__ center_crop_image (TYPE_2__,int ,int ) ;
 int error (char*) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ get_image_from_stream (void*) ;
 char** get_labels (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int grayscale_image_3c (TYPE_2__) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,int ) ;
 void* open_video_stream (char const*,int,int ,int ,int ) ;
 int option_find_int (int *,char*,int) ;
 char* option_find_str (int *,char*,int ) ;
 int printf (char*,...) ;
 int * read_data_cfg (char*) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_2__,char*,int) ;
 int srand (int) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

void demo_regressor(char *datacfg, char *cfgfile, char *weightfile, int cam_index, const char *filename)
{
}
