#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_16__ {double learning_rate; double momentum; double decay; int n; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_17__ {char* path; TYPE_5__* resized; TYPE_5__* im; int /*<<< orphan*/  type; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ load_args ;
struct TYPE_18__ {int size; } ;
typedef  TYPE_3__ list ;
struct TYPE_19__ {int classes; } ;
typedef  TYPE_4__ layer ;
struct TYPE_20__ {float* data; int w; int h; } ;
typedef  TYPE_5__ image ;
typedef  int /*<<< orphan*/  detection ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LETTERBOX_DATA ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 char* FUNC0 (char*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char** FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int,int,float,double,int*,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC12 (char*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__) ; 
 TYPE_1__* FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,float*) ; 
 char* FUNC17 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC22 (char*) ; 
 int* FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 double FUNC29 () ; 

void FUNC30(char *datacfg, char *cfgfile, char *weightfile, char *outfile)
{
    int j;
    list *options = FUNC22(datacfg);
    char *valid_images = FUNC17(options, "valid", "data/train.list");
    char *name_list = FUNC17(options, "names", "data/names.list");
    char *prefix = FUNC17(options, "results", "results");
    char **names = FUNC10(name_list);
    char *mapf = FUNC17(options, "map", 0);
    int *map = 0;
    if (mapf) map = FUNC23(mapf);

    network *net = FUNC15(cfgfile, weightfile, 0);
    FUNC24(net, 1);
    FUNC5(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    FUNC26(FUNC28(0));

    list *plist = FUNC12(valid_images);
    char **paths = (char **)FUNC13(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    char buff[1024];
    char *type = FUNC17(options, "eval", "voc");
    FILE *fp = 0;
    FILE **fps = 0;
    int coco = 0;
    int imagenet = 0;
    if(0==FUNC27(type, "coco")){
        if(!outfile) outfile = "coco_results";
        FUNC25(buff, 1024, "%s/%s.json", prefix, outfile);
        fp = FUNC4(buff, "w");
        FUNC5(*fp, "[\n");
        coco = 1;
    } else if(0==FUNC27(type, "imagenet")){
        if(!outfile) outfile = "imagenet-detection";
        FUNC25(buff, 1024, "%s/%s.txt", prefix, outfile);
        fp = FUNC4(buff, "w");
        imagenet = 1;
        classes = 200;
    } else {
        if(!outfile) outfile = "comp4_det_test_";
        fps = FUNC1(classes, sizeof(FILE *));
        for(j = 0; j < classes; ++j){
            FUNC25(buff, 1024, "%s/%s%s.txt", prefix, outfile, names[j]);
            fps[j] = FUNC4(buff, "w");
        }
    }


    int m = plist->size;
    int i=0;
    int t;

    float thresh = .005;
    float nms = .45;

    int nthreads = 4;
    image *val = FUNC1(nthreads, sizeof(image));
    image *val_resized = FUNC1(nthreads, sizeof(image));
    image *buf = FUNC1(nthreads, sizeof(image));
    image *buf_resized = FUNC1(nthreads, sizeof(image));
    pthread_t *thr = FUNC1(nthreads, sizeof(pthread_t));

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    //args.type = IMAGE_DATA;
    args.type = LETTERBOX_DATA;

    for(t = 0; t < nthreads; ++t){
        args.path = paths[i+t];
        args.im = &buf[t];
        args.resized = &buf_resized[t];
        thr[t] = FUNC14(args);
    }
    double start = FUNC29();
    for(i = nthreads; i < m+nthreads; i += nthreads){
        FUNC5(stderr, "%d\n", i);
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            FUNC21(thr[t], 0);
            val[t] = buf[t];
            val_resized[t] = buf_resized[t];
        }
        for(t = 0; t < nthreads && i+t < m; ++t){
            args.path = paths[i+t];
            args.im = &buf[t];
            args.resized = &buf_resized[t];
            thr[t] = FUNC14(args);
        }
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            char *path = paths[i+t-nthreads];
            char *id = FUNC0(path);
            float *X = val_resized[t].data;
            FUNC16(net, X);
            int w = val[t].w;
            int h = val[t].h;
            int nboxes = 0;
            detection *dets = FUNC11(net, w, h, thresh, .5, map, 0, &nboxes);
            if (nms) FUNC2(dets, nboxes, classes, nms);
            if (coco){
                FUNC18(fp, path, dets, nboxes, classes, w, h);
            } else if (imagenet){
                FUNC20(fp, i+t-nthreads+1, dets, nboxes, classes, w, h);
            } else {
                FUNC19(fps, id, dets, nboxes, classes, w, h);
            }
            FUNC7(dets, nboxes);
            FUNC6(id);
            FUNC8(val[t]);
            FUNC8(val_resized[t]);
        }
    }
    for(j = 0; j < classes; ++j){
        if(fps) FUNC3(fps[j]);
    }
    if(coco){
        FUNC9(fp, -2, SEEK_CUR); 
        FUNC5(*fp, "\n]\n");
        FUNC3(fp);
    }
    FUNC5(stderr, "Total Detection Time: %f Seconds\n", FUNC29() - start);
}