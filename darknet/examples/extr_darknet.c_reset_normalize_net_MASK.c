#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* state_h_layer; struct TYPE_8__* state_r_layer; struct TYPE_8__* state_z_layer; struct TYPE_8__* input_h_layer; struct TYPE_8__* input_r_layer; struct TYPE_8__* input_z_layer; scalar_t__ batch_normalize; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ CONNECTED ; 
 scalar_t__ CONVOLUTIONAL ; 
 scalar_t__ GRU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int gpu_index ; 
 TYPE_1__* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

void FUNC4(char *cfgfile, char *weightfile, char *outfile)
{
    gpu_index = -1;
    network *net = FUNC2(cfgfile, weightfile, 0);
    int i;
    for (i = 0; i < net->n; ++i) {
        layer l = net->layers[i];
        if (l.type == CONVOLUTIONAL && l.batch_normalize) {
            FUNC1(l);
        }
        if (l.type == CONNECTED && l.batch_normalize) {
            FUNC0(l);
        }
        if (l.type == GRU && l.batch_normalize) {
            FUNC0(*l.input_z_layer);
            FUNC0(*l.input_r_layer);
            FUNC0(*l.input_h_layer);
            FUNC0(*l.state_z_layer);
            FUNC0(*l.state_r_layer);
            FUNC0(*l.state_h_layer);
        }
    }
    FUNC3(net, outfile);
}