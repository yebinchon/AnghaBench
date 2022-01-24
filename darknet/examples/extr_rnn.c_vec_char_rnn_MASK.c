#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int inputs; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_7__ {double* output; int outputs; int /*<<< orphan*/  output_gpu; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 float* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,double*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*) ; 

void FUNC11(char *cfgfile, char *weightfile, char *seed)
{
    char *base = FUNC0(cfgfile);
    FUNC4(stderr, "%s\n", base);

    network *net = FUNC5(cfgfile, weightfile, 0);
    int inputs = net->inputs;

    int c;
    int seed_len = FUNC10(seed);
    float *input = FUNC1(inputs, sizeof(float));
    int i;
    char *line;
    while((line=FUNC3(stdin)) != 0){
        FUNC8(net, 0);
        for(i = 0; i < seed_len; ++i){
            c = seed[i];
            input[(int)c] = 1;
            FUNC6(net, input);
            input[(int)c] = 0;
        }
        FUNC9(line);
        int str_len = FUNC10(line);
        for(i = 0; i < str_len; ++i){
            c = line[i];
            input[(int)c] = 1;
            FUNC6(net, input);
            input[(int)c] = 0;
        }
        c = ' ';
        input[(int)c] = 1;
        FUNC6(net, input);
        input[(int)c] = 0;

        layer l = net->layers[0];
        #ifdef GPU
        cuda_pull_array(l.output_gpu, l.output, l.outputs);
        #endif
        FUNC7("%s", line);
        for(i = 0; i < l.outputs; ++i){
            FUNC7(",%g", l.output[i]);
        }
        FUNC7("\n");
    }
}