#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* net; int /*<<< orphan*/  time_steps; int /*<<< orphan*/  inputs; int /*<<< orphan*/  batch; } ;
typedef  TYPE_2__ size_params ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  layer ;
struct TYPE_4__ {int /*<<< orphan*/  adam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

layer FUNC3(list *options, size_params params)
{
    int output = FUNC1(options, "output", 1);
    int batch_normalize = FUNC2(options, "batch_normalize", 0);

    layer l = FUNC0(params.batch, params.inputs, output, params.time_steps, batch_normalize, params.net->adam);

    return l;
}