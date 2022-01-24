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
typedef  int /*<<< orphan*/  maxpool_layer ;
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

maxpool_layer FUNC4(list *options, size_params params)
{
    int stride = FUNC2(options, "stride",1);
    int size = FUNC2(options, "size",stride);
    int padding = FUNC3(options, "padding", size-1);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) FUNC0("Layer before maxpool layer must output image.");

    maxpool_layer layer = FUNC1(batch,h,w,c,size,stride,padding);
    return layer;
}