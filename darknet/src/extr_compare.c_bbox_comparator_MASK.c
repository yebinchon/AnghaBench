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
struct TYPE_8__ {int w; int h; int c; } ;
struct TYPE_7__ {int class; int /*<<< orphan*/  filename; TYPE_2__ net; } ;
typedef  TYPE_1__ sortable_bbox ;
typedef  TYPE_2__ network ;
struct TYPE_9__ {int w; int h; int c; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 float* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ,int) ; 
 float* FUNC5 (TYPE_2__,float*) ; 
 int /*<<< orphan*/  total_compares ; 

int FUNC6(const void *a, const void *b)
{
    ++total_compares;
    sortable_bbox box1 = *(sortable_bbox*)a;
    sortable_bbox box2 = *(sortable_bbox*)b;
    network net = box1.net;
    int class   = box1.class;

    image im1 = FUNC3(box1.filename, net.w, net.h);
    image im2 = FUNC3(box2.filename, net.w, net.h);
    float *X  = FUNC0(net.w*net.h*net.c, sizeof(float));
    FUNC4(X,                   im1.data, im1.w*im1.h*im1.c*sizeof(float));
    FUNC4(X+im1.w*im1.h*im1.c, im2.data, im2.w*im2.h*im2.c*sizeof(float));
    float *predictions = FUNC5(net, X);
    
    FUNC2(im1);
    FUNC2(im2);
    FUNC1(X);
    if (predictions[class*2] > predictions[class*2+1]){
        return 1;
    }
    return -1;
}