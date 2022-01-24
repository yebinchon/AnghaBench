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
struct TYPE_4__ {int batch; int /*<<< orphan*/  truth; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (TYPE_1__*) ; 

float FUNC2(network *net, data d, int n)
{
    int batch = net->batch;

    int i;
    float sum = 0;
    for(i = 0; i < n; ++i){
        FUNC0(d, batch, net->input, net->truth);
        float err = FUNC1(net);
        sum += err;
    }
    return (float)sum/(n*batch);
}