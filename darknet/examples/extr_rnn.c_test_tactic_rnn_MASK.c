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
 int EOF ; 
 char* FUNC0 (char*) ; 
 float* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC5 (TYPE_2__*,float*) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char** FUNC8 (char*,size_t*) ; 
 int FUNC9 (float*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

void FUNC11(char *cfgfile, char *weightfile, int num, float temp, int rseed, char *token_file)
{
    char **tokens = 0;
    if(token_file){
        size_t n;
        tokens = FUNC8(token_file, &n);
    }

    FUNC10(rseed);
    char *base = FUNC0(cfgfile);
    FUNC2(stderr, "%s\n", base);

    network *net = FUNC4(cfgfile, weightfile, 0);
    int inputs = net->inputs;

    int i, j;
    for(i = 0; i < net->n; ++i) net->layers[i].temperature = temp;
    int c = 0;
    float *input = FUNC1(inputs, sizeof(float));
    float *out = 0;

    while((c = FUNC3(stdin)) != EOF){
        input[c] = 1;
        out = FUNC5(net, input);
        input[c] = 0;
    }
    for(i = 0; i < num; ++i){
        for(j = 0; j < inputs; ++j){
            if (out[j] < .0001) out[j] = 0;
        }
        int next = FUNC9(out, inputs);
        if(c == '.' && next == '\n') break;
        c = next;
        FUNC6(c, tokens);

        input[c] = 1;
        out = FUNC5(net, input);
        input[c] = 0;
    }
    FUNC7("\n");
}