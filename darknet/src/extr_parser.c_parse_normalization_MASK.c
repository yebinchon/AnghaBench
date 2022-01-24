#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  batch; } ;
typedef  TYPE_1__ size_params ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float,float,float) ; 
 float FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

layer FUNC3(list *options, size_params params)
{
    float alpha = FUNC1(options, "alpha", .0001);
    float beta =  FUNC1(options, "beta" , .75);
    float kappa = FUNC1(options, "kappa", 1);
    int size = FUNC2(options, "size", 5);
    layer l = FUNC0(params.batch, params.w, params.h, params.c, size, alpha, beta, kappa);
    return l;
}