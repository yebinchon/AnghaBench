
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int pthread_t ;
struct TYPE_14__ {double learning_rate; double momentum; double decay; int n; int h; int w; TYPE_4__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_15__ {char* path; TYPE_5__* resized; TYPE_5__* im; int type; int h; int w; int member_0; } ;
typedef TYPE_2__ load_args ;
struct TYPE_16__ {int size; } ;
typedef TYPE_3__ list ;
struct TYPE_17__ {int classes; int side; int n; } ;
typedef TYPE_4__ layer ;
struct TYPE_18__ {float* data; int w; int h; } ;
typedef TYPE_5__ image ;
typedef int detection ;
typedef int FILE ;


 int IMAGE_DATA ;
 int SEEK_CUR ;
 void* calloc (int,int) ;
 int do_nms_sort (int *,int,int,float) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free_detections (int *,int) ;
 int free_image (TYPE_5__) ;
 int fseek (int *,int,int ) ;
 int get_coco_image_id (char*) ;
 int * get_network_boxes (TYPE_1__*,int,int,float,int ,int ,int ,int*) ;
 TYPE_3__* get_paths (char*) ;
 scalar_t__ list_to_array (TYPE_3__*) ;
 int load_data_in_thread (TYPE_2__) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int network_predict (TYPE_1__*,float*) ;
 int print_cocos (int *,int,int *,int,int,int,int) ;
 int pthread_join (int ,int ) ;
 int set_batch_network (TYPE_1__*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int srand (scalar_t__) ;
 int stderr ;
 scalar_t__ time (int ) ;

void validate_coco(char *cfg, char *weights)
{
    network *net = load_network(cfg, weights, 0);
    set_batch_network(net, 1);
    fprintf(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    srand(time(0));

    char *base = "results/";
    list *plist = get_paths("data/coco_val_5k.list");


    char **paths = (char **)list_to_array(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    char buff[1024];
    snprintf(buff, 1024, "%s/coco_results.json", base);
    FILE *fp = fopen(buff, "w");
    fprintf(fp, "[\n");

    int m = plist->size;
    int i=0;
    int t;

    float thresh = .01;
    int nms = 1;
    float iou_thresh = .5;

    int nthreads = 8;
    image *val = calloc(nthreads, sizeof(image));
    image *val_resized = calloc(nthreads, sizeof(image));
    image *buf = calloc(nthreads, sizeof(image));
    image *buf_resized = calloc(nthreads, sizeof(image));
    pthread_t *thr = calloc(nthreads, sizeof(pthread_t));

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    args.type = IMAGE_DATA;

    for(t = 0; t < nthreads; ++t){
        args.path = paths[i+t];
        args.im = &buf[t];
        args.resized = &buf_resized[t];
        thr[t] = load_data_in_thread(args);
    }
    time_t start = time(0);
    for(i = nthreads; i < m+nthreads; i += nthreads){
        fprintf(stderr, "%d\n", i);
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            pthread_join(thr[t], 0);
            val[t] = buf[t];
            val_resized[t] = buf_resized[t];
        }
        for(t = 0; t < nthreads && i+t < m; ++t){
            args.path = paths[i+t];
            args.im = &buf[t];
            args.resized = &buf_resized[t];
            thr[t] = load_data_in_thread(args);
        }
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            char *path = paths[i+t-nthreads];
            int image_id = get_coco_image_id(path);
            float *X = val_resized[t].data;
            network_predict(net, X);
            int w = val[t].w;
            int h = val[t].h;
            int nboxes = 0;
            detection *dets = get_network_boxes(net, w, h, thresh, 0, 0, 0, &nboxes);
            if (nms) do_nms_sort(dets, l.side*l.side*l.n, classes, iou_thresh);
            print_cocos(fp, image_id, dets, l.side*l.side*l.n, classes, w, h);
            free_detections(dets, nboxes);
            free_image(val[t]);
            free_image(val_resized[t]);
        }
    }
    fseek(fp, -2, SEEK_CUR);
    fprintf(fp, "\n]\n");
    fclose(fp);

    fprintf(stderr, "Total Detection Time: %f Seconds\n", (double)(time(0) - start));
}
