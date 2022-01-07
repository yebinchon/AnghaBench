
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
typedef int list ;
struct TYPE_15__ {int c; double* rolling_mean; double* rolling_variance; double* scales; double* output; int outputs; int output_gpu; } ;
typedef TYPE_2__ layer ;
struct TYPE_16__ {int w; int h; float* data; } ;
typedef TYPE_3__ image ;
typedef scalar_t__ clock_t ;


 int* calloc (int,int) ;
 scalar_t__ clock () ;
 TYPE_3__ crop_image (TYPE_3__,int,int,int,int) ;
 int cuda_pull_array (int ,double*,int) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_image (TYPE_3__) ;
 char** get_labels (char*) ;
 TYPE_3__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,float*) ;
 int normalize_cpu (float*,float*,float*,int,int,int) ;
 int option_find_int (int *,char*,int) ;
 char* option_find_str (int *,char*,char*) ;
 int printf (char*,...) ;
 int * read_data_cfg (char*) ;
 TYPE_3__ resize_min (TYPE_3__,int) ;
 double sec (scalar_t__) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 int top_predictions (TYPE_1__*,int,int*) ;

void try_classifier(char *datacfg, char *cfgfile, char *weightfile, char *filename, int layer_num)
{
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    srand(2222222);

    list *options = read_data_cfg(datacfg);

    char *name_list = option_find_str(options, "names", 0);
    if(!name_list) name_list = option_find_str(options, "labels", "data/labels.list");
    int top = option_find_int(options, "top", 1);

    int i = 0;
    char **names = get_labels(name_list);
    clock_t time;
    int *indexes = calloc(top, sizeof(int));
    char buff[256];
    char *input = buff;
    while(1){
        if(filename){
            strncpy(input, filename, 256);
        }else{
            printf("Enter Image Path: ");
            fflush(stdout);
            input = fgets(input, 256, stdin);
            if(!input) return;
            strtok(input, "\n");
        }
        image orig = load_image_color(input, 0, 0);
        image r = resize_min(orig, 256);
        image im = crop_image(r, (r.w - 224 - 1)/2 + 1, (r.h - 224 - 1)/2 + 1, 224, 224);
        float mean[] = {0.48263312050943, 0.45230225481413, 0.40099074308742};
        float std[] = {0.22590347483426, 0.22120921437787, 0.22103996251583};
        float var[3];
        var[0] = std[0]*std[0];
        var[1] = std[1]*std[1];
        var[2] = std[2]*std[2];

        normalize_cpu(im.data, mean, var, 1, 3, im.w*im.h);

        float *X = im.data;
        time=clock();
        float *predictions = network_predict(net, X);

        layer l = net->layers[layer_num];
        for(i = 0; i < l.c; ++i){
            if(l.rolling_mean) printf("%f %f %f\n", l.rolling_mean[i], l.rolling_variance[i], l.scales[i]);
        }



        for(i = 0; i < l.outputs; ++i){
            printf("%f\n", l.output[i]);
        }
        top_predictions(net, top, indexes);
        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        for(i = 0; i < top; ++i){
            int index = indexes[i];
            printf("%s: %f\n", names[index], predictions[index]);
        }
        free_image(im);
        if (filename) break;
    }
}
