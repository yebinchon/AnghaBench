
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int inputs; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_7__ {double* output; int outputs; int output_gpu; } ;
typedef TYPE_2__ layer ;


 char* basecfg (char*) ;
 float* calloc (int,int) ;
 int cuda_pull_array (int ,double*,int) ;
 char* fgetl (int ) ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int network_predict (TYPE_1__*,float*) ;
 int printf (char*,...) ;
 int reset_network_state (TYPE_1__*,int ) ;
 int stderr ;
 int stdin ;
 int strip (char*) ;
 int strlen (char*) ;

void vec_char_rnn(char *cfgfile, char *weightfile, char *seed)
{
    char *base = basecfg(cfgfile);
    fprintf(stderr, "%s\n", base);

    network *net = load_network(cfgfile, weightfile, 0);
    int inputs = net->inputs;

    int c;
    int seed_len = strlen(seed);
    float *input = calloc(inputs, sizeof(float));
    int i;
    char *line;
    while((line=fgetl(stdin)) != 0){
        reset_network_state(net, 0);
        for(i = 0; i < seed_len; ++i){
            c = seed[i];
            input[(int)c] = 1;
            network_predict(net, input);
            input[(int)c] = 0;
        }
        strip(line);
        int str_len = strlen(line);
        for(i = 0; i < str_len; ++i){
            c = line[i];
            input[(int)c] = 1;
            network_predict(net, input);
            input[(int)c] = 0;
        }
        c = ' ';
        input[(int)c] = 1;
        network_predict(net, input);
        input[(int)c] = 0;

        layer l = net->layers[0];



        printf("%s", line);
        for(i = 0; i < l.outputs; ++i){
            printf(",%g", l.output[i]);
        }
        printf("\n");
    }
}
