#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int c; int w; int h; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ image ;
struct TYPE_8__ {int n; float* biases; } ;
typedef  TYPE_2__ convolutional_layer ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,float) ; 
 float FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(convolutional_layer l, float scale, float trans)
{
    int i;
    for(i = 0; i < l.n; ++i){
        image im = FUNC0(l, i);
        if (im.c == 3) {
            FUNC1(im, scale);
            float sum = FUNC2(im.data, im.w*im.h*im.c);
            l.biases[i] += sum*trans;
        }
    }
}