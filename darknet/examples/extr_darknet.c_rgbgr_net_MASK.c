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
struct TYPE_6__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ CONVOLUTIONAL ; 
 int gpu_index ; 
 TYPE_1__* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

void FUNC3(char *cfgfile, char *weightfile, char *outfile)
{
    gpu_index = -1;
    network *net = FUNC0(cfgfile, weightfile, 0);
    int i;
    for(i = 0; i < net->n; ++i){
        layer l = net->layers[i];
        if(l.type == CONVOLUTIONAL){
            FUNC1(l);
            break;
        }
    }
    FUNC2(net, outfile);
}