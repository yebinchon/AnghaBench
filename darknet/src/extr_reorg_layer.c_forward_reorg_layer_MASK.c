#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int w; int h; int inputs; scalar_t__ output; int /*<<< orphan*/  stride; int /*<<< orphan*/  c; scalar_t__ reverse; scalar_t__ extra; scalar_t__ flatten; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,scalar_t__) ; 

void FUNC4(const layer l, network net)
{
    int i;
    if(l.flatten){
        FUNC2(l.output, net.input, l.outputs*l.batch*sizeof(float));
        if(l.reverse){
            FUNC1(l.output, l.w*l.h, l.c, l.batch, 0);
        }else{
            FUNC1(l.output, l.w*l.h, l.c, l.batch, 1);
        }
    } else if (l.extra) {
        for(i = 0; i < l.batch; ++i){
            FUNC0(l.inputs, net.input + i*l.inputs, 1, l.output + i*l.outputs, 1);
        }
    } else if (l.reverse){
        FUNC3(net.input, l.w, l.h, l.c, l.batch, l.stride, 1, l.output);
    } else {
        FUNC3(net.input, l.w, l.h, l.c, l.batch, l.stride, 0, l.output);
    }
}