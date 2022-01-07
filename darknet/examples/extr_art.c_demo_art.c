
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__ image ;
typedef int idx ;


 int error (char*) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ get_image_from_stream (void*) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,int ) ;
 void* open_video_stream (int ,int,int ,int ,int ) ;
 int printf (char*,...) ;
 TYPE_2__ resize_image (TYPE_2__,int ,int ) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_2__,char*,int) ;
 int srand (int) ;

void demo_art(char *cfgfile, char *weightfile, int cam_index)
{
}
