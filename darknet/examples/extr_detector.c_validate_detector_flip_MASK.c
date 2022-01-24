#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_18__ {double learning_rate; double momentum; double decay; int n; int w; int h; int c; TYPE_4__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_19__ {int w; int h; char* path; TYPE_5__* resized; TYPE_5__* im; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ load_args ;
struct TYPE_20__ {int size; } ;
typedef  TYPE_3__ list ;
struct TYPE_21__ {int classes; } ;
typedef  TYPE_4__ layer ;
struct TYPE_22__ {int w; int h; scalar_t__ data; } ;
typedef  TYPE_5__ image ;
typedef  int /*<<< orphan*/  detection ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LETTERBOX_DATA ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 char* FUNC0 (char*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char** FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,int,int,float,double,int*,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC14 (char*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__) ; 
 TYPE_1__* FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC18 (int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,scalar_t__) ; 
 char* FUNC20 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC25 (char*) ; 
 int* FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC30 (char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 double FUNC32 () ; 

void FUNC33(char *datacfg, char *cfgfile, char *weightfile, char *outfile)
{
    int j;
    list *options = FUNC25(datacfg);
    char *valid_images = FUNC20(options, "valid", "data/train.list");
    char *name_list = FUNC20(options, "names", "data/names.list");
    char *prefix = FUNC20(options, "results", "results");
    char **names = FUNC12(name_list);
    char *mapf = FUNC20(options, "map", 0);
    int *map = 0;
    if (mapf) map = FUNC26(mapf);

    network *net = FUNC17(cfgfile, weightfile, 0);
    FUNC27(net, 2);
    FUNC7(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    FUNC29(FUNC31(0));

    list *plist = FUNC14(valid_images);
    char **paths = (char **)FUNC15(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    char buff[1024];
    char *type = FUNC20(options, "eval", "voc");
    FILE *fp = 0;
    FILE **fps = 0;
    int coco = 0;
    int imagenet = 0;
    if(0==FUNC30(type, "coco")){
        if(!outfile) outfile = "coco_results";
        FUNC28(buff, 1024, "%s/%s.json", prefix, outfile);
        fp = FUNC6(buff, "w");
        FUNC7(*fp, "[\n");
        coco = 1;
    } else if(0==FUNC30(type, "imagenet")){
        if(!outfile) outfile = "imagenet-detection";
        FUNC28(buff, 1024, "%s/%s.txt", prefix, outfile);
        fp = FUNC6(buff, "w");
        imagenet = 1;
        classes = 200;
    } else {
        if(!outfile) outfile = "comp4_det_test_";
        fps = FUNC1(classes, sizeof(FILE *));
        for(j = 0; j < classes; ++j){
            FUNC28(buff, 1024, "%s/%s%s.txt", prefix, outfile, names[j]);
            fps[j] = FUNC6(buff, "w");
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

    image input = FUNC18(net->w, net->h, net->c*2);

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    //args.type = IMAGE_DATA;
    args.type = LETTERBOX_DATA;

    for(t = 0; t < nthreads; ++t){
        args.path = paths[i+t];
        args.im = &buf[t];
        args.resized = &buf_resized[t];
        thr[t] = FUNC16(args);
    }
    double start = FUNC32();
    for(i = nthreads; i < m+nthreads; i += nthreads){
        FUNC7(stderr, "%d\n", i);
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            FUNC24(thr[t], 0);
            val[t] = buf[t];
            val_resized[t] = buf_resized[t];
        }
        for(t = 0; t < nthreads && i+t < m; ++t){
            args.path = paths[i+t];
            args.im = &buf[t];
            args.resized = &buf_resized[t];
            thr[t] = FUNC16(args);
        }
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            char *path = paths[i+t-nthreads];
            char *id = FUNC0(path);
            FUNC2(net->w*net->h*net->c, val_resized[t].data, 1, input.data, 1);
            FUNC5(val_resized[t]);
            FUNC2(net->w*net->h*net->c, val_resized[t].data, 1, input.data + net->w*net->h*net->c, 1);

            FUNC19(net, input.data);
            int w = val[t].w;
            int h = val[t].h;
            int num = 0;
            detection *dets = FUNC13(net, w, h, thresh, .5, map, 0, &num);
            if (nms) FUNC3(dets, num, classes, nms);
            if (coco){
                FUNC21(fp, path, dets, num, classes, w, h);
            } else if (imagenet){
                FUNC23(fp, i+t-nthreads+1, dets, num, classes, w, h);
            } else {
                FUNC22(fps, id, dets, num, classes, w, h);
            }
            FUNC9(dets, num);
            FUNC8(id);
            FUNC10(val[t]);
            FUNC10(val_resized[t]);
        }
    }
    for(j = 0; j < classes; ++j){
        if(fps) FUNC4(fps[j]);
    }
    if(coco){
        FUNC11(fp, -2, SEEK_CUR); 
        FUNC7(*fp, "\n]\n");
        FUNC4(fp);
    }
    FUNC7(stderr, "Total Detection Time: %f Seconds\n", FUNC32() - start);
}