
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {double learning_rate; double momentum; double decay; int n; int h; int w; TYPE_3__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_23__ {int size; } ;
typedef TYPE_2__ list ;
struct TYPE_24__ {int w; int h; int n; } ;
typedef TYPE_3__ layer ;
struct TYPE_25__ {int h; int w; int data; } ;
typedef TYPE_4__ image ;
struct TYPE_26__ {float objectness; int bbox; } ;
typedef TYPE_5__ detection ;
struct TYPE_27__ {int h; int w; int y; int x; } ;
typedef TYPE_6__ box_label ;
struct TYPE_28__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_7__ box ;


 char* basecfg (char*) ;
 float box_iou (int ,TYPE_7__) ;
 int do_nms_obj (TYPE_5__*,int,int,float) ;
 int find_replace (char*,char*,char*,char*) ;
 int fprintf (int ,char*,int,int,int,...) ;
 int free (char*) ;
 int free_image (TYPE_4__) ;
 TYPE_5__* get_network_boxes (TYPE_1__*,int ,int ,float,double,int ,int,int*) ;
 TYPE_2__* get_paths (char*) ;
 scalar_t__ list_to_array (TYPE_2__*) ;
 TYPE_4__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int network_predict (TYPE_1__*,int ) ;
 TYPE_6__* read_boxes (char*,int*) ;
 TYPE_4__ resize_image (TYPE_4__,int ,int ) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int ) ;
 int stderr ;
 int time (int ) ;

void validate_detector_recall(char *cfgfile, char *weightfile)
{
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    srand(time(0));

    list *plist = get_paths("data/coco_val_5k.list");
    char **paths = (char **)list_to_array(plist);

    layer l = net->layers[net->n-1];

    int j, k;

    int m = plist->size;
    int i=0;

    float thresh = .001;
    float iou_thresh = .5;
    float nms = .4;

    int total = 0;
    int correct = 0;
    int proposals = 0;
    float avg_iou = 0;

    for(i = 0; i < m; ++i){
        char *path = paths[i];
        image orig = load_image_color(path, 0, 0);
        image sized = resize_image(orig, net->w, net->h);
        char *id = basecfg(path);
        network_predict(net, sized.data);
        int nboxes = 0;
        detection *dets = get_network_boxes(net, sized.w, sized.h, thresh, .5, 0, 1, &nboxes);
        if (nms) do_nms_obj(dets, nboxes, 1, nms);

        char labelpath[4096];
        find_replace(path, "images", "labels", labelpath);
        find_replace(labelpath, "JPEGImages", "labels", labelpath);
        find_replace(labelpath, ".jpg", ".txt", labelpath);
        find_replace(labelpath, ".JPEG", ".txt", labelpath);

        int num_labels = 0;
        box_label *truth = read_boxes(labelpath, &num_labels);
        for(k = 0; k < nboxes; ++k){
            if(dets[k].objectness > thresh){
                ++proposals;
            }
        }
        for (j = 0; j < num_labels; ++j) {
            ++total;
            box t = {truth[j].x, truth[j].y, truth[j].w, truth[j].h};
            float best_iou = 0;
            for(k = 0; k < l.w*l.h*l.n; ++k){
                float iou = box_iou(dets[k].bbox, t);
                if(dets[k].objectness > thresh && iou > best_iou){
                    best_iou = iou;
                }
            }
            avg_iou += best_iou;
            if(best_iou > iou_thresh){
                ++correct;
            }
        }

        fprintf(stderr, "%5d %5d %5d\tRPs/Img: %.2f\tIOU: %.2f%%\tRecall:%.2f%%\n", i, correct, total, (float)proposals/(i+1), avg_iou*100/total, 100.*correct/total);
        free(id);
        free_image(orig);
        free_image(sized);
    }
}
