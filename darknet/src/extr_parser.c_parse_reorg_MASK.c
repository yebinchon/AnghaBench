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
struct TYPE_3__ {int h; int w; int c; int batch; } ;
typedef  TYPE_1__ size_params ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

layer FUNC4(list *options, size_params params)
{
    int stride = FUNC2(options, "stride",1);
    int reverse = FUNC3(options, "reverse",0);
    int flatten = FUNC3(options, "flatten",0);
    int extra = FUNC3(options, "extra",0);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) FUNC0("Layer before reorg layer must output image.");

    layer layer = FUNC1(batch,w,h,c,stride,reverse, flatten, extra);
    return layer;
}