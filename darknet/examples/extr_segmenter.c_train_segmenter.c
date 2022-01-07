
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_34__ {int learning_rate; int w; int h; int batch; int subdivisions; double momentum; double decay; int* seen; int max_batches; int c; int hue; int saturation; int exposure; int aspect; int angle; int max_crop; int min_crop; } ;
typedef TYPE_3__ network ;
struct TYPE_35__ {int w; int h; int threads; int scale; int size; int classes; char** paths; int n; int m; TYPE_7__* d; int type; int hue; int saturation; int exposure; int aspect; int angle; int max; int min; int member_0; } ;
typedef TYPE_4__ load_args ;
struct TYPE_36__ {int size; } ;
typedef TYPE_5__ list ;
struct TYPE_37__ {int w; int h; } ;
typedef TYPE_6__ image ;
struct TYPE_33__ {int * vals; } ;
struct TYPE_32__ {int * vals; } ;
struct TYPE_38__ {TYPE_2__ X; TYPE_1__ y; } ;
typedef TYPE_7__ data ;


 int SEGMENTATION_DATA ;
 int assert (int) ;
 char* basecfg (char*) ;
 TYPE_3__** calloc (int,int) ;
 int cuda_set_device (int) ;
 TYPE_6__ float_to_image (int,int,int,int ) ;
 int free (char*) ;
 int free_data (TYPE_7__) ;
 int free_image (TYPE_6__) ;
 int free_list (TYPE_5__*) ;
 int free_network (TYPE_3__*) ;
 int free_ptrs (void**,int) ;
 int get_current_batch (TYPE_3__*) ;
 int get_current_rate (TYPE_3__*) ;
 TYPE_6__ get_network_image (TYPE_3__*) ;
 TYPE_5__* get_paths (char*) ;
 scalar_t__ list_to_array (TYPE_5__*) ;
 int load_data (TYPE_4__) ;
 TYPE_3__* load_network (char*,char*,int) ;
 TYPE_6__ mask_to_rgb (TYPE_6__) ;
 char* option_find_str (TYPE_5__*,char*,char*) ;
 int printf (char*,...) ;
 int pthread_join (int ,int ) ;
 int rand () ;
 TYPE_5__* read_data_cfg (char*) ;
 int save_weights (TYPE_3__*,char*) ;
 int show_image (TYPE_6__,char*,int) ;
 int sprintf (char*,char*,char*,char*,...) ;
 int srand (int) ;
 int time (int ) ;
 float train_network (TYPE_3__*,TYPE_7__) ;
 float train_networks (TYPE_3__**,int,TYPE_7__,int) ;
 double what_time_is_it_now () ;

void train_segmenter(char *datacfg, char *cfgfile, char *weightfile, int *gpus, int ngpus, int clear, int display)
{
    int i;

    float avg_loss = -1;
    char *base = basecfg(cfgfile);
    printf("%s\n", base);
    printf("%d\n", ngpus);
    network **nets = calloc(ngpus, sizeof(network*));

    srand(time(0));
    int seed = rand();
    for(i = 0; i < ngpus; ++i){
        srand(seed);



        nets[i] = load_network(cfgfile, weightfile, clear);
        nets[i]->learning_rate *= ngpus;
    }
    srand(time(0));
    network *net = nets[0];
    image pred = get_network_image(net);

    int div = net->w/pred.w;
    assert(pred.w * div == net->w);
    assert(pred.h * div == net->h);

    int imgs = net->batch * net->subdivisions * ngpus;

    printf("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);
    list *options = read_data_cfg(datacfg);

    char *backup_directory = option_find_str(options, "backup", "/backup/");
    char *train_list = option_find_str(options, "train", "data/train.list");

    list *plist = get_paths(train_list);
    char **paths = (char **)list_to_array(plist);
    printf("%d\n", plist->size);
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
    load_thread = load_data(args);

    int epoch = (*net->seen)/N;
    while(get_current_batch(net) < net->max_batches || net->max_batches == 0){
        double time = what_time_is_it_now();

        pthread_join(load_thread, 0);
        train = buffer;
        load_thread = load_data(args);

        printf("Loaded: %lf seconds\n", what_time_is_it_now()-time);
        time = what_time_is_it_now();

        float loss = 0;







        loss = train_network(net, train);

        if(display){
            image tr = float_to_image(net->w/div, net->h/div, 80, train.y.vals[net->batch*(net->subdivisions-1)]);
            image im = float_to_image(net->w, net->h, net->c, train.X.vals[net->batch*(net->subdivisions-1)]);
            image mask = mask_to_rgb(tr);
            image prmask = mask_to_rgb(pred);
            show_image(im, "input", 1);
            show_image(prmask, "pred", 1);
            show_image(mask, "truth", 100);
            free_image(mask);
            free_image(prmask);
        }
        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.9 + loss*.1;
        printf("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", get_current_batch(net), (float)(*net->seen)/N, loss, avg_loss, get_current_rate(net), what_time_is_it_now()-time, *net->seen);
        free_data(train);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            sprintf(buff, "%s/%s_%d.weights",backup_directory,base, epoch);
            save_weights(net, buff);
        }
        if(get_current_batch(net)%100 == 0){
            char buff[256];
            sprintf(buff, "%s/%s.backup",backup_directory,base);
            save_weights(net, buff);
        }
    }
    char buff[256];
    sprintf(buff, "%s/%s.weights", backup_directory, base);
    save_weights(net, buff);

    free_network(net);
    free_ptrs((void**)paths, plist->size);
    free_list(plist);
    free(base);
}
