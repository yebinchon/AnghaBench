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
struct TYPE_4__ {int outputs; int inputs; int /*<<< orphan*/  rolling_variance; int /*<<< orphan*/  rolling_mean; int /*<<< orphan*/  scales; scalar_t__ batch_normalize; int /*<<< orphan*/  weights; int /*<<< orphan*/  biases; } ;
typedef  TYPE_1__ layer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ gpu_index ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

void FUNC2(layer l, FILE *fp)
{
#ifdef GPU
    if(gpu_index >= 0){
        pull_connected_layer(l);
    }
#endif
    FUNC0(l.biases, sizeof(float), l.outputs, fp);
    FUNC0(l.weights, sizeof(float), l.outputs*l.inputs, fp);
    if (l.batch_normalize){
        FUNC0(l.scales, sizeof(float), l.outputs, fp);
        FUNC0(l.rolling_mean, sizeof(float), l.outputs, fp);
        FUNC0(l.rolling_variance, sizeof(float), l.outputs, fp);
    }
}