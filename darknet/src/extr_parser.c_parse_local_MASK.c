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
typedef  int /*<<< orphan*/  local_layer ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  ACTIVATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

local_layer FUNC5(list *options, size_params params)
{
    int n = FUNC3(options, "filters",1);
    int size = FUNC3(options, "size",1);
    int stride = FUNC3(options, "stride",1);
    int pad = FUNC3(options, "pad",0);
    char *activation_s = FUNC4(options, "activation", "logistic");
    ACTIVATION activation = FUNC1(activation_s);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) FUNC0("Layer before local layer must output image.");

    local_layer layer = FUNC2(batch,h,w,c,n,size,stride,pad,activation);

    return layer;
}