
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; } ;
struct TYPE_15__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_16__ {int data; } ;
typedef TYPE_2__ image ;


 int error (char*) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ get_image_from_stream (void*) ;
 TYPE_2__ get_network_image (TYPE_1__*) ;
 int gettimeofday (struct timeval*,int *) ;
 TYPE_2__ letterbox_image (TYPE_2__,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 TYPE_2__ mask_to_rgb (TYPE_2__) ;
 int network_predict (TYPE_1__*,int ) ;
 void* open_video_stream (char const*,int,int ,int ,int ) ;
 int printf (char*,...) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_2__,char*,int) ;
 int srand (int) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

void demo_isegmenter(char *datacfg, char *cfg, char *weights, int cam_index, const char *filename)
{
}
