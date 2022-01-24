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
struct TYPE_4__ {int outputs; int inputs; int /*<<< orphan*/  rolling_variance; int /*<<< orphan*/  rolling_mean; int /*<<< orphan*/  scales; int /*<<< orphan*/  dontloadscales; scalar_t__ batch_normalize; int /*<<< orphan*/  weights; int /*<<< orphan*/  biases; } ;
typedef  TYPE_1__ layer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ gpu_index ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void FUNC3(layer l, FILE *fp, int transpose)
{
    FUNC0(l.biases, sizeof(float), l.outputs, fp);
    FUNC0(l.weights, sizeof(float), l.outputs*l.inputs, fp);
    if(transpose){
        FUNC2(l.weights, l.inputs, l.outputs);
    }
    //printf("Biases: %f mean %f variance\n", mean_array(l.biases, l.outputs), variance_array(l.biases, l.outputs));
    //printf("Weights: %f mean %f variance\n", mean_array(l.weights, l.outputs*l.inputs), variance_array(l.weights, l.outputs*l.inputs));
    if (l.batch_normalize && (!l.dontloadscales)){
        FUNC0(l.scales, sizeof(float), l.outputs, fp);
        FUNC0(l.rolling_mean, sizeof(float), l.outputs, fp);
        FUNC0(l.rolling_variance, sizeof(float), l.outputs, fp);
        //printf("Scales: %f mean %f variance\n", mean_array(l.scales, l.outputs), variance_array(l.scales, l.outputs));
        //printf("rolling_mean: %f mean %f variance\n", mean_array(l.rolling_mean, l.outputs), variance_array(l.rolling_mean, l.outputs));
        //printf("rolling_variance: %f mean %f variance\n", mean_array(l.rolling_variance, l.outputs), variance_array(l.rolling_variance, l.outputs));
    }
#ifdef GPU
    if(gpu_index >= 0){
        push_connected_layer(l);
    }
#endif
}