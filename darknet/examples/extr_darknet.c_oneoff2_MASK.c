#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  n; scalar_t__* seen; } ;
typedef  TYPE_1__ network ;

/* Variables and functions */
 int gpu_index ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

void FUNC3(char *cfgfile, char *weightfile, char *outfile, int l)
{
    gpu_index = -1;
    network *net = FUNC1(cfgfile);
    if(weightfile){
        FUNC0(net, weightfile, 0, net->n);
        FUNC0(net, weightfile, l, net->n);
    }
    *net->seen = 0;
    FUNC2(net, outfile, net->n);
}