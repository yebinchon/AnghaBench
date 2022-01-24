#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int inputs; } ;
typedef  TYPE_1__ network ;

/* Variables and functions */
 int EOF ; 
 char* FUNC0 (char*) ; 
 float* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 float FUNC6 (float) ; 
 float* FUNC7 (TYPE_1__*,float*) ; 
 double FUNC8 (int,float) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,double,double) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC10 (char*) ; 

void FUNC11(char *cfgfile, char *weightfile, char *seed)
{
    char *base = FUNC0(cfgfile);
    FUNC3(stderr, "%s\n", base);

    network *net = FUNC5(cfgfile, weightfile, 0);
    int inputs = net->inputs;

    int count = 0;
    int words = 1;
    int c;
    int len = FUNC10(seed);
    float *input = FUNC1(inputs, sizeof(float));
    int i;
    for(i = 0; i < len; ++i){
        c = seed[i];
        input[(int)c] = 1;
        FUNC7(net, input);
        input[(int)c] = 0;
    }
    float sum = 0;
    c = FUNC4(stdin);
    float log2 = FUNC6(2);
    int in = 0;
    while(c != EOF){
        int next = FUNC4(stdin);
        if(next == EOF) break;
        if(next < 0 || next >= 255) FUNC2("Out of range character");

        input[c] = 1;
        float *out = FUNC7(net, input);
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
        sum += FUNC6(out[next])/log2;
        c = next;
        FUNC9("%d %d Perplexity: %4.4f    Word Perplexity: %4.4f\n", count, words, FUNC8(2, -sum/count), FUNC8(2, -sum/words));
    }
}