#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int c; int batch; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 long FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 double FUNC6 () ; 

void FUNC7(char *cfgfile, int tics)
{
    if (tics == 0) tics = 1000;
    network *net = FUNC3(cfgfile);
    FUNC5(net, 1);
    int i;
    double time=FUNC6();
    image im = FUNC0(net->w, net->h, net->c*net->batch);
    for(i = 0; i < tics; ++i){
        FUNC1(net, im.data);
    }
    double t = FUNC6() - time;
    long ops = FUNC2(net);
    FUNC4("\n%d evals, %f Seconds\n", tics, t);
    FUNC4("Floating Point Operations: %.2f Bn\n", (float)ops/1000000000.);
    FUNC4("FLOPS: %.2f Bn\n", (float)ops/1000000000.*tics/t);
    FUNC4("Speed: %f sec/eval\n", t/tics);
    FUNC4("Speed: %f Hz\n", tics/t);
}