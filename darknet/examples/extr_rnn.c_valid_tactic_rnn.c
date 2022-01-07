
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inputs; } ;
typedef TYPE_1__ network ;


 int EOF ;
 char* basecfg (char*) ;
 float* calloc (int,int) ;
 int error (char*) ;
 int fprintf (int ,char*,char*) ;
 int getc (int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float log (float) ;
 float* network_predict (TYPE_1__*,float*) ;
 double pow (int,float) ;
 int printf (char*,int,int,double,double) ;
 int stderr ;
 int stdin ;
 int strlen (char*) ;

void valid_tactic_rnn(char *cfgfile, char *weightfile, char *seed)
{
    char *base = basecfg(cfgfile);
    fprintf(stderr, "%s\n", base);

    network *net = load_network(cfgfile, weightfile, 0);
    int inputs = net->inputs;

    int count = 0;
    int words = 1;
    int c;
    int len = strlen(seed);
    float *input = calloc(inputs, sizeof(float));
    int i;
    for(i = 0; i < len; ++i){
        c = seed[i];
        input[(int)c] = 1;
        network_predict(net, input);
        input[(int)c] = 0;
    }
    float sum = 0;
    c = getc(stdin);
    float log2 = log(2);
    int in = 0;
    while(c != EOF){
        int next = getc(stdin);
        if(next == EOF) break;
        if(next < 0 || next >= 255) error("Out of range character");

        input[c] = 1;
        float *out = network_predict(net, input);
        input[c] = 0;

        if(c == '.' && next == '\n') in = 0;
        if(!in) {
            if(c == '>' && next == '>'){
                in = 1;
                ++words;
            }
            c = next;
            continue;
        }
        ++count;
        sum += log(out[next])/log2;
        c = next;
        printf("%d %d Perplexity: %4.4f    Word Perplexity: %4.4f\n", count, words, pow(2, -sum/count), pow(2, -sum/words));
    }
}
