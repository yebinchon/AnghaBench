#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_34__ {int learning_rate; int w; int h; int batch; int subdivisions; double momentum; double decay; int* seen; int max_batches; int c; int /*<<< orphan*/  hue; int /*<<< orphan*/  saturation; int /*<<< orphan*/  exposure; int /*<<< orphan*/  aspect; int /*<<< orphan*/  angle; int /*<<< orphan*/  max_crop; int /*<<< orphan*/  min_crop; } ;
typedef  TYPE_3__ network ;
struct TYPE_35__ {int w; int h; int threads; int scale; int size; int classes; char** paths; int n; int m; TYPE_7__* d; int /*<<< orphan*/  type; int /*<<< orphan*/  hue; int /*<<< orphan*/  saturation; int /*<<< orphan*/  exposure; int /*<<< orphan*/  aspect; int /*<<< orphan*/  angle; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ load_args ;
struct TYPE_36__ {int size; } ;
typedef  TYPE_5__ list ;
struct TYPE_37__ {int w; int h; } ;
typedef  TYPE_6__ image ;
struct TYPE_33__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_32__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_38__ {TYPE_2__ X; TYPE_1__ y; } ;
typedef  TYPE_7__ data ;

/* Variables and functions */
 int /*<<< orphan*/  SEGMENTATION_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 TYPE_3__** FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_6__ FUNC4 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (void**,int) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 TYPE_6__ FUNC13 (TYPE_3__*) ; 
 TYPE_5__* FUNC14 (char*) ; 
 scalar_t__ FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__) ; 
 TYPE_3__* FUNC17 (char*,char*,int) ; 
 TYPE_6__ FUNC18 (TYPE_6__) ; 
 char* FUNC19 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 () ; 
 TYPE_5__* FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 float FUNC29 (TYPE_3__*,TYPE_7__) ; 
 float FUNC30 (TYPE_3__**,int,TYPE_7__,int) ; 
 double FUNC31 () ; 

void FUNC32(char *datacfg, char *cfgfile, char *weightfile, int *gpus, int ngpus, int clear, int display)
{
    int i;

    float avg_loss = -1;
    char *base = FUNC1(cfgfile);
    FUNC20("%s\n", base);
    FUNC20("%d\n", ngpus);
    network **nets = FUNC2(ngpus, sizeof(network*));

    FUNC27(FUNC28(0));
    int seed = FUNC22();
    for(i = 0; i < ngpus; ++i){
        FUNC27(seed);
#ifdef GPU
        cuda_set_device(gpus[i]);
#endif
        nets[i] = FUNC17(cfgfile, weightfile, clear);
        nets[i]->learning_rate *= ngpus;
    }
    FUNC27(FUNC28(0));
    network *net = nets[0];
    image pred = FUNC13(net);

    int div = net->w/pred.w;
    FUNC0(pred.w * div == net->w);
    FUNC0(pred.h * div == net->h);

    int imgs = net->batch * net->subdivisions * ngpus;

    FUNC20("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    list *options = FUNC23(datacfg);

    char *backup_directory = FUNC19(options, "backup", "/backup/");
    char *train_list = FUNC19(options, "train", "data/train.list");

    list *plist = FUNC14(train_list);
    char **paths = (char **)FUNC15(plist);
    FUNC20("%d\n", plist->size);
    int N = plist->size;

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    args.threads = 32;
    args.scale = div;

    args.min = net->min_crop;
    args.max = net->max_crop;
    args.angle = net->angle;
    args.aspect = net->aspect;
    args.exposure = net->exposure;
    args.saturation = net->saturation;
    args.hue = net->hue;
    args.size = net->w;
    args.classes = 80;

    args.paths = paths;
    args.n = imgs;
    args.m = N;
    args.type = SEGMENTATION_DATA;

    data train;
    data buffer;
    pthread_t load_thread;
    args.d = &buffer;
    load_thread = FUNC16(args);

    int epoch = (*net->seen)/N;
    while(FUNC11(net) < net->max_batches || net->max_batches == 0){
        double time = FUNC31();

        FUNC21(load_thread, 0);
        train = buffer;
        load_thread = FUNC16(args);

        FUNC20("Loaded: %lf seconds\n", FUNC31()-time);
        time = FUNC31();

        float loss = 0;
#ifdef GPU
        if(ngpus == 1){
            loss = train_network(net, train);
        } else {
            loss = train_networks(nets, ngpus, train, 4);
        }
#else
        loss = FUNC29(net, train);
#endif
        if(display){
            image tr = FUNC4(net->w/div, net->h/div, 80, train.y.vals[net->batch*(net->subdivisions-1)]);
            image im = FUNC4(net->w, net->h, net->c, train.X.vals[net->batch*(net->subdivisions-1)]);
            image mask = FUNC18(tr);
            image prmask = FUNC18(pred);
            FUNC25(im, "input", 1);
            FUNC25(prmask, "pred", 1);
            FUNC25(mask, "truth", 100);
            FUNC7(mask);
            FUNC7(prmask);
        }
        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.9 + loss*.1;
        FUNC20("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", FUNC11(net), (float)(*net->seen)/N, loss, avg_loss, FUNC12(net), FUNC31()-time, *net->seen);
        FUNC6(train);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            FUNC26(buff, "%s/%s_%d.weights",backup_directory,base, epoch);
            FUNC24(net, buff);
        }
        if(FUNC11(net)%100 == 0){
            char buff[256];
            FUNC26(buff, "%s/%s.backup",backup_directory,base);
            FUNC24(net, buff);
        }
    }
    char buff[256];
    FUNC26(buff, "%s/%s.weights", backup_directory, base);
    FUNC24(net, buff);

    FUNC9(net);
    FUNC10((void**)paths, plist->size);
    FUNC8(plist);
    FUNC5(base);
}