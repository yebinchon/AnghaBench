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
struct TYPE_6__ {int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  batch; } ;
typedef  TYPE_1__ size_params ;
typedef  int /*<<< orphan*/  network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_7__ {int /*<<< orphan*/  scale; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

layer FUNC3(list *options, size_params params, network *net)
{

    int stride = FUNC2(options, "stride",2);
    layer l = FUNC0(params.batch, params.w, params.h, params.c, stride);
    l.scale = FUNC1(options, "scale", 1);
    return l;
}