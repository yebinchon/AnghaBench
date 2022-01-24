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
struct TYPE_5__ {scalar_t__ train; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {scalar_t__ type; int outputs; int batch; int out_h; int out_w; int /*<<< orphan*/  out_c; int /*<<< orphan*/  biases; int /*<<< orphan*/  output; int /*<<< orphan*/  scales; int /*<<< orphan*/  rolling_variance; int /*<<< orphan*/  rolling_mean; int /*<<< orphan*/  x_norm; int /*<<< orphan*/  variance; int /*<<< orphan*/  mean; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ BATCHNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC8(layer l, network net)
{
    if(l.type == BATCHNORM) FUNC2(l.outputs*l.batch, net.input, 1, l.output, 1);
    FUNC2(l.outputs*l.batch, l.output, 1, l.x, 1);
    if(net.train){
        FUNC3(l.output, l.batch, l.out_c, l.out_h*l.out_w, l.mean);
        FUNC7(l.output, l.mean, l.batch, l.out_c, l.out_h*l.out_w, l.variance);

        FUNC5(l.out_c, .99, l.rolling_mean, 1);
        FUNC1(l.out_c, .01, l.mean, 1, l.rolling_mean, 1);
        FUNC5(l.out_c, .99, l.rolling_variance, 1);
        FUNC1(l.out_c, .01, l.variance, 1, l.rolling_variance, 1);

        FUNC4(l.output, l.mean, l.variance, l.batch, l.out_c, l.out_h*l.out_w);   
        FUNC2(l.outputs*l.batch, l.output, 1, l.x_norm, 1);
    } else {
        FUNC4(l.output, l.rolling_mean, l.rolling_variance, l.batch, l.out_c, l.out_h*l.out_w);
    }
    FUNC6(l.output, l.scales, l.batch, l.out_c, l.out_h*l.out_w);
    FUNC0(l.output, l.biases, l.batch, l.out_c, l.out_h*l.out_w);
}