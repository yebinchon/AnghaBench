
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int n; int h; int w; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {scalar_t__ type; int w; int h; int n; } ;
typedef TYPE_2__ layer ;
typedef int detection ;


 scalar_t__ DETECTION ;
 scalar_t__ REGION ;
 scalar_t__ YOLO ;
 int get_detection_detections (TYPE_2__,int,int,float,int *) ;
 int get_region_detections (TYPE_2__,int,int,int ,int ,float,int*,float,int,int *) ;
 int get_yolo_detections (TYPE_2__,int,int,int ,int ,float,int*,int,int *) ;

void fill_network_boxes(network *net, int w, int h, float thresh, float hier, int *map, int relative, detection *dets)
{
    int j;
    for(j = 0; j < net->n; ++j){
        layer l = net->layers[j];
        if(l.type == YOLO){
            int count = get_yolo_detections(l, w, h, net->w, net->h, thresh, map, relative, dets);
            dets += count;
        }
        if(l.type == REGION){
            get_region_detections(l, w, h, net->w, net->h, thresh, map, hier, relative, dets);
            dets += l.w*l.h*l.n;
        }
        if(l.type == DETECTION){
            get_detection_detections(l, w, h, thresh, dets);
            dets += l.w*l.h*l.n;
        }
    }
}
