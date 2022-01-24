#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int inputs; int n; TYPE_1__* layers; } ;
typedef  TYPE_2__ network ;
struct TYPE_5__ {float temperature; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 float* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC4 (TYPE_2__*,float*) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** FUNC7 (char*,size_t*) ; 
 int FUNC8 (float*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (char*) ; 

void FUNC11(char *cfgfile, char *weightfile, int num, char *seed, float temp, int rseed, char *token_file)
{
    char **tokens = 0;
    if(token_file){
        size_t n;
        tokens = FUNC7(token_file, &n);
    }

    FUNC9(rseed);
    char *base = FUNC0(cfgfile);
    FUNC2(stderr, "%s\n", base);

    network *net = FUNC3(cfgfile, weightfile, 0);
    int inputs = net->inputs;

    int i, j;
    for(i = 0; i < net->n; ++i) net->layers[i].temperature = temp;
    int c = 0;
    int len = FUNC10(seed);
    float *input = FUNC1(inputs, sizeof(float));

    /*
       fill_cpu(inputs, 0, input, 1);
       for(i = 0; i < 10; ++i){
       network_predict(net, input);
       }
       fill_cpu(inputs, 0, input, 1);
     */

    for(i = 0; i < len-1; ++i){
        c = seed[i];
        input[c] = 1;
        FUNC4(net, input);
        input[c] = 0;
        FUNC5(c, tokens);
    }
    if(len) c = seed[len-1];
    FUNC5(c, tokens);
    for(i = 0; i < num; ++i){
        input[c] = 1;
        float *out = FUNC4(net, input);
        input[c] = 0;
        for(j = 32; j < 127; ++j){
            //printf("%d %c %f\n",j, j, out[j]);
        }
        for(j = 0; j < inputs; ++j){
            if (out[j] < .0001) out[j] = 0;
        }
        c = FUNC8(out, inputs);
        FUNC5(c, tokens);
    }
    FUNC6("\n");
}