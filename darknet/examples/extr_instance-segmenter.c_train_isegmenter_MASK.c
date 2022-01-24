#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_37__ {int learning_rate; int w; int h; int batch; int subdivisions; double momentum; double decay; int* seen; int max_batches; int c; int /*<<< orphan*/  hue; int /*<<< orphan*/  saturation; int /*<<< orphan*/  exposure; int /*<<< orphan*/  aspect; int /*<<< orphan*/  angle; int /*<<< orphan*/  max_crop; int /*<<< orphan*/  min_crop; } ;
typedef  TYPE_3__ network ;
struct TYPE_38__ {int w; int h; int threads; int scale; int num_boxes; int size; int classes; char** paths; int n; int m; TYPE_7__* d; int /*<<< orphan*/  type; int /*<<< orphan*/  hue; int /*<<< orphan*/  saturation; int /*<<< orphan*/  exposure; int /*<<< orphan*/  aspect; int /*<<< orphan*/  angle; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ load_args ;
struct TYPE_39__ {int size; } ;
typedef  TYPE_5__ list ;
struct TYPE_40__ {int c; int data; int w; int h; } ;
typedef  TYPE_6__ image ;
struct TYPE_36__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_35__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_41__ {TYPE_2__ X; TYPE_1__ y; } ;
typedef  TYPE_7__ data ;

/* Variables and functions */
 int /*<<< orphan*/  ISEG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 TYPE_3__** FUNC2 (int,int) ; 
 TYPE_6__ FUNC3 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_6__ FUNC5 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (void**,int) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 TYPE_6__ FUNC14 (TYPE_3__*) ; 
 TYPE_5__* FUNC15 (char*) ; 
 scalar_t__ FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__) ; 
 TYPE_3__* FUNC18 (char*,char*,int) ; 
 TYPE_6__ FUNC19 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__) ; 
 char* FUNC21 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 () ; 
 TYPE_5__* FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_6__,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 float FUNC31 (TYPE_3__*,TYPE_7__) ; 
 float FUNC32 (TYPE_3__**,int,TYPE_7__,int) ; 
 double FUNC33 () ; 

void FUNC34(char *datacfg, char *cfgfile, char *weightfile, int *gpus, int ngpus, int clear, int display)
{
    int i;

    float avg_loss = -1;
    char *base = FUNC1(cfgfile);
    FUNC22("%s\n", base);
    FUNC22("%d\n", ngpus);
    network **nets = FUNC2(ngpus, sizeof(network*));

    FUNC29(FUNC30(0));
    int seed = FUNC24();
    for(i = 0; i < ngpus; ++i){
        FUNC29(seed);
#ifdef GPU
        cuda_set_device(gpus[i]);
#endif
        nets[i] = FUNC18(cfgfile, weightfile, clear);
        nets[i]->learning_rate *= ngpus;
    }
    FUNC29(FUNC30(0));
    network *net = nets[0];
    image pred = FUNC14(net);

    image embed = pred;
    embed.c = 3;
    embed.data += embed.w*embed.h*80;

    int div = net->w/pred.w;
    FUNC0(pred.w * div == net->w);
    FUNC0(pred.h * div == net->h);

    int imgs = net->batch * net->subdivisions * ngpus;

    FUNC22("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    list *options = FUNC25(datacfg);

    char *backup_directory = FUNC21(options, "backup", "/backup/");
    char *train_list = FUNC21(options, "train", "data/train.list");

    list *plist = FUNC15(train_list);
    char **paths = (char **)FUNC16(plist);
    FUNC22("%d\n", plist->size);
    int N = plist->size;

    load_args args = {0};
    args.w = net->w;
    args.h = net->h;
    args.threads = 32;
    args.scale = div;
    args.num_boxes = 90;

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
    args.type = ISEG_DATA;

    data train;
    data buffer;
    pthread_t load_thread;
    args.d = &buffer;
    load_thread = FUNC17(args);

    int epoch = (*net->seen)/N;
    while(FUNC12(net) < net->max_batches || net->max_batches == 0){
        double time = FUNC33();

        FUNC23(load_thread, 0);
        train = buffer;
        load_thread = FUNC17(args);

        FUNC22("Loaded: %lf seconds\n", FUNC33()-time);
        time = FUNC33();

        float loss = 0;
#ifdef GPU
        if(ngpus == 1){
            loss = train_network(net, train);
        } else {
            loss = train_networks(nets, ngpus, train, 4);
        }
#else
        loss = FUNC31(net, train);
#endif
        if(display){
            image tr = FUNC5(net->w/div, net->h/div, 80, train.y.vals[net->batch*(net->subdivisions-1)]);
            image im = FUNC5(net->w, net->h, net->c, train.X.vals[net->batch*(net->subdivisions-1)]);
            pred.c = 80;
            image mask = FUNC19(tr);
            image prmask = FUNC19(pred);
            image ecopy = FUNC3(embed);
            FUNC20(ecopy);
            FUNC27(ecopy, "embed", 1);
            FUNC8(ecopy);

            FUNC27(im, "input", 1);
            FUNC27(prmask, "pred", 1);
            FUNC27(mask, "truth", 100);
            FUNC8(mask);
            FUNC8(prmask);
        }
        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.9 + loss*.1;
        FUNC22("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", FUNC12(net), (float)(*net->seen)/N, loss, avg_loss, FUNC13(net), FUNC33()-time, *net->seen);
        FUNC7(train);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            FUNC28(buff, "%s/%s_%d.weights",backup_directory,base, epoch);
            FUNC26(net, buff);
        }
        if(FUNC12(net)%100 == 0){
            char buff[256];
            FUNC28(buff, "%s/%s.backup",backup_directory,base);
            FUNC26(net, buff);
        }
    }
    char buff[256];
    FUNC28(buff, "%s/%s.weights", backup_directory, base);
    FUNC26(net, buff);

    FUNC10(net);
    FUNC11((void**)paths, plist->size);
    FUNC9(plist);
    FUNC6(base);
}