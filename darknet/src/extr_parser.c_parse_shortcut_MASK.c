#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int index; int batch; int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ size_params ;
struct TYPE_9__ {TYPE_3__* layers; } ;
typedef  TYPE_2__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_10__ {void* beta; void* alpha; int /*<<< orphan*/  activation; int /*<<< orphan*/  out_c; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; } ;
typedef  TYPE_3__ layer ;
typedef  int /*<<< orphan*/  ACTIVATION ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__ FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 

layer FUNC6(list *options, size_params params, network *net)
{
    char *l = FUNC3(options, "from");
    int index = FUNC0(l);
    if(index < 0) index = params.index + index;

    int batch = params.batch;
    layer from = net->layers[index];

    layer s = FUNC2(batch, index, params.w, params.h, params.c, from.out_w, from.out_h, from.out_c);

    char *activation_s = FUNC5(options, "activation", "linear");
    ACTIVATION activation = FUNC1(activation_s);
    s.activation = activation;
    s.alpha = FUNC4(options, "alpha", 1);
    s.beta = FUNC4(options, "beta", 1);
    return s;
}