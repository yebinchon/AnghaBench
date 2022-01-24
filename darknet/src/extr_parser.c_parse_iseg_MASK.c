#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ inputs; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  batch; } ;
typedef  TYPE_1__ size_params ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_7__ {scalar_t__ outputs; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

layer FUNC3(list *options, size_params params)
{
    int classes = FUNC2(options, "classes", 20);
    int ids = FUNC2(options, "ids", 32);
    layer l = FUNC1(params.batch, params.w, params.h, classes, ids);
    FUNC0(l.outputs == params.inputs);
    return l;
}