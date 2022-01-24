#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_14__ {double learning_rate; double momentum; double decay; int n; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_4__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_15__ {char* path; TYPE_5__* resized; TYPE_5__* im; int /*<<< orphan*/  type; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ load_args ;
struct TYPE_16__ {int size; } ;
typedef  TYPE_3__ list ;
struct TYPE_17__ {int classes; int side; int n; } ;
typedef  TYPE_4__ layer ;
struct TYPE_18__ {float* data; int w; int h; } ;
typedef  TYPE_5__ image ;
typedef  int /*<<< orphan*/  detection ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IMAGE_DATA ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC10 (char*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__) ; 
 TYPE_1__* FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

void FUNC21(char *cfg, char *weights)
{
    network *net = FUNC13(cfg, weights, 0);
    FUNC17(net, 1);
    FUNC4(stderr, "Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    FUNC19(FUNC20(0));

    char *base = "results/";
    list *plist = FUNC10("data/coco_val_5k.list");
    //list *plist = get_paths("/home/pjreddie/data/people-art/test.txt");
    //list *plist = get_paths("/home/pjreddie/data/voc/test/2007_test.txt");
    char **paths = (char **)FUNC11(plist);

    layer l = net->layers[net->n-1];
    int classes = l.classes;

    char buff[1024];
    FUNC18(buff, 1024, "%s/coco_results.json", base);
    FILE *fp = FUNC3(buff, "w");
    FUNC4(*fp, "[\n");

    int m = plist->size;
    int i=0;
    int t;

    float thresh = .01;
    int nms = 1;
    float iou_thresh = .5;

    int nthreads = 8;
    image *val = FUNC0(nthreads, sizeof(image));
    image *val_resized = FUNC0(nthreads, sizeof(image));
    image *buf = FUNC0(nthreads, sizeof(image));
    image *buf_resized = FUNC0(nthreads, sizeof(image));
    pthread_t *thr = FUNC0(nthreads, sizeof(pthread_t));

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    args.type = IMAGE_DATA;

    for(t = 0; t < nthreads; ++t){
        args.path = paths[i+t];
        args.im = &buf[t];
        args.resized = &buf_resized[t];
        thr[t] = FUNC12(args);
    }
    time_t start = FUNC20(0);
    for(i = nthreads; i < m+nthreads; i += nthreads){
        FUNC4(stderr, "%d\n", i);
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            FUNC16(thr[t], 0);
            val[t] = buf[t];
            val_resized[t] = buf_resized[t];
        }
        for(t = 0; t < nthreads && i+t < m; ++t){
            args.path = paths[i+t];
            args.im = &buf[t];
            args.resized = &buf_resized[t];
            thr[t] = FUNC12(args);
        }
        for(t = 0; t < nthreads && i+t-nthreads < m; ++t){
            char *path = paths[i+t-nthreads];
            int image_id = FUNC8(path);
            float *X = val_resized[t].data;
            FUNC14(net, X);
            int w = val[t].w;
            int h = val[t].h;
            int nboxes = 0;
            detection *dets = FUNC9(net, w, h, thresh, 0, 0, 0, &nboxes);
            if (nms) FUNC1(dets, l.side*l.side*l.n, classes, iou_thresh);
            FUNC15(fp, image_id, dets, l.side*l.side*l.n, classes, w, h);
            FUNC5(dets, nboxes);
            FUNC6(val[t]);
            FUNC6(val_resized[t]);
        }
    }
    FUNC7(fp, -2, SEEK_CUR); 
    FUNC4(*fp, "\n]\n");
    FUNC2(fp);

    FUNC4(stderr, "Total Detection Time: %f Seconds\n", (double)(FUNC20(0) - start));
}