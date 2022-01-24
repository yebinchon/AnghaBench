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
struct TYPE_5__ {int /*<<< orphan*/  delta; int /*<<< orphan*/  train; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {int batch; int out_w; int out_h; scalar_t__ type; int outputs; int /*<<< orphan*/  delta; int /*<<< orphan*/  out_c; int /*<<< orphan*/  variance_delta; int /*<<< orphan*/  mean_delta; int /*<<< orphan*/  variance; int /*<<< orphan*/  mean; int /*<<< orphan*/  x; int /*<<< orphan*/  scales; int /*<<< orphan*/  scale_updates; int /*<<< orphan*/  x_norm; int /*<<< orphan*/  bias_updates; int /*<<< orphan*/  rolling_variance; int /*<<< orphan*/  rolling_mean; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ BATCHNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC7(layer l, network net)
{
    if(!net.train){
        l.mean = l.rolling_mean;
        l.variance = l.rolling_variance;
    }
    FUNC0(l.bias_updates, l.delta, l.batch, l.out_c, l.out_w*l.out_h);
    FUNC1(l.x_norm, l.delta, l.batch, l.out_c, l.out_w*l.out_h, l.scale_updates);

    FUNC5(l.delta, l.scales, l.batch, l.out_c, l.out_h*l.out_w);

    FUNC3(l.delta, l.variance, l.batch, l.out_c, l.out_w*l.out_h, l.mean_delta);
    FUNC6(l.x, l.delta, l.mean, l.variance, l.batch, l.out_c, l.out_w*l.out_h, l.variance_delta);
    FUNC4(l.x, l.mean, l.variance, l.mean_delta, l.variance_delta, l.batch, l.out_c, l.out_w*l.out_h, l.delta);
    if(l.type == BATCHNORM) FUNC2(l.outputs*l.batch, l.delta, 1, net.delta, 1);
}