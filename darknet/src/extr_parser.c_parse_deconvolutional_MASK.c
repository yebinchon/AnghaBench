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
struct TYPE_5__ {int h; int w; int c; int batch; TYPE_1__* net; } ;
typedef  TYPE_2__ size_params ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  layer ;
struct TYPE_4__ {int /*<<< orphan*/  adam; } ;
typedef  int /*<<< orphan*/  ACTIVATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 

layer FUNC6(list *options, size_params params)
{
    int n = FUNC3(options, "filters",1);
    int size = FUNC3(options, "size",1);
    int stride = FUNC3(options, "stride",1);

    char *activation_s = FUNC5(options, "activation", "logistic");
    ACTIVATION activation = FUNC1(activation_s);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) FUNC0("Layer before deconvolutional layer must output image.");
    int batch_normalize = FUNC4(options, "batch_normalize", 0);
    int pad = FUNC4(options, "pad",0);
    int padding = FUNC4(options, "padding",0);
    if(pad) padding = size/2;

    layer l = FUNC2(batch,h,w,c,n,size,stride,padding, activation, batch_normalize, params.net->adam);

    return l;
}