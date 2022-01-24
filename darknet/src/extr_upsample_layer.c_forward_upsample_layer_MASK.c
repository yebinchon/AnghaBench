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
struct TYPE_5__ {int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int /*<<< orphan*/  output; int /*<<< orphan*/  scale; int /*<<< orphan*/  stride; int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  out_h; int /*<<< orphan*/  out_w; scalar_t__ reverse; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(const layer l, network net)
{
    FUNC0(l.outputs*l.batch, 0, l.output, 1);
    if(l.reverse){
        FUNC1(l.output, l.out_w, l.out_h, l.c, l.batch, l.stride, 0, l.scale, net.input);
    }else{
        FUNC1(net.input, l.w, l.h, l.c, l.batch, l.stride, 1, l.scale, l.output);
    }
}