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
struct TYPE_5__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* state_h_layer; struct TYPE_6__* state_r_layer; struct TYPE_6__* state_z_layer; struct TYPE_6__* input_h_layer; struct TYPE_6__* input_r_layer; struct TYPE_6__* input_z_layer; scalar_t__ batch_normalize; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ CONNECTED ; 
 scalar_t__ GRU ; 
 int gpu_index ; 
 TYPE_1__* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 

void FUNC3(char *cfgfile, char *weightfile)
{
    gpu_index = -1;
    network *net = FUNC0(cfgfile, weightfile, 0);
    int i;
    for (i = 0; i < net->n; ++i) {
        layer l = net->layers[i];
        if (l.type == CONNECTED && l.batch_normalize) {
            FUNC1("Connected Layer %d\n", i);
            FUNC2(l);
        }
        if (l.type == GRU && l.batch_normalize) {
            FUNC1("GRU Layer %d\n", i);
            FUNC1("Input Z\n");
            FUNC2(*l.input_z_layer);
            FUNC1("Input R\n");
            FUNC2(*l.input_r_layer);
            FUNC1("Input H\n");
            FUNC2(*l.input_h_layer);
            FUNC1("State Z\n");
            FUNC2(*l.state_z_layer);
            FUNC1("State R\n");
            FUNC2(*l.state_r_layer);
            FUNC1("State H\n");
            FUNC2(*l.state_h_layer);
        }
        FUNC1("\n");
    }
}