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
struct TYPE_7__ {int c; } ;
typedef  TYPE_1__ image ;
struct TYPE_8__ {int n; } ;
typedef  TYPE_2__ convolutional_layer ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

void FUNC2(convolutional_layer l)
{
    int i;
    for(i = 0; i < l.n; ++i){
        image im = FUNC0(l, i);
        if (im.c == 3) {
            FUNC1(im);
        }
    }
}