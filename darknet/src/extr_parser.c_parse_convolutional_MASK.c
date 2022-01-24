#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int h; int w; int c; int batch; TYPE_1__* net; } ;
typedef  TYPE_2__ size_params ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_9__ {int /*<<< orphan*/  dot; void* flipped; } ;
typedef  TYPE_3__ convolutional_layer ;
struct TYPE_7__ {int /*<<< orphan*/  adam; } ;
typedef  int /*<<< orphan*/  ACTIVATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__ FUNC2 (int,int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 

convolutional_layer FUNC7(list *options, size_params params)
{
    int n = FUNC4(options, "filters",1);
    int size = FUNC4(options, "size",1);
    int stride = FUNC4(options, "stride",1);
    int pad = FUNC5(options, "pad",0);
    int padding = FUNC5(options, "padding",0);
    int groups = FUNC5(options, "groups", 1);
    if(pad) padding = size/2;

    char *activation_s = FUNC6(options, "activation", "logistic");
    ACTIVATION activation = FUNC1(activation_s);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) FUNC0("Layer before convolutional layer must output image.");
    int batch_normalize = FUNC5(options, "batch_normalize", 0);
    int binary = FUNC5(options, "binary", 0);
    int xnor = FUNC5(options, "xnor", 0);

    convolutional_layer layer = FUNC2(batch,h,w,c,n,groups,size,stride,padding,activation, batch_normalize, binary, xnor, params.net->adam);
    layer.flipped = FUNC5(options, "flipped", 0);
    layer.dot = FUNC3(options, "dot", 0);

    return layer;
}