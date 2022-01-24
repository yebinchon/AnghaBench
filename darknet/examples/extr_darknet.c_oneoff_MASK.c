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
struct TYPE_6__ {int n; scalar_t__* seen; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_7__ {int n; int c; int weights; int biases; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int) ; 
 int gpu_index ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,double,int,int) ; 

void FUNC6(char *cfgfile, char *weightfile, char *outfile)
{
    gpu_index = -1;
    network *net = FUNC2(cfgfile);
    int oldn = net->layers[net->n - 2].n;
    int c = net->layers[net->n - 2].c;
    FUNC5(oldn*c, .1, net->layers[net->n - 2].weights, 1);
    FUNC5(oldn, 0, net->layers[net->n - 2].biases, 1);
    net->layers[net->n - 2].n = 11921;
    net->layers[net->n - 2].biases += 5;
    net->layers[net->n - 2].weights += 5*c;
    if(weightfile){
        FUNC1(net, weightfile);
    }
    net->layers[net->n - 2].biases -= 5;
    net->layers[net->n - 2].weights -= 5*c;
    net->layers[net->n - 2].n = oldn;
    FUNC3("%d\n", oldn);
    layer l = net->layers[net->n - 2];
    FUNC0(l.n/3, l.biases, 1, l.biases +   l.n/3, 1);
    FUNC0(l.n/3, l.biases, 1, l.biases + 2*l.n/3, 1);
    FUNC0(l.n/3*l.c, l.weights, 1, l.weights +   l.n/3*l.c, 1);
    FUNC0(l.n/3*l.c, l.weights, 1, l.weights + 2*l.n/3*l.c, 1);
    *net->seen = 0;
    FUNC4(net, outfile);
}