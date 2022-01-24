#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_5__ {int a; int c; scalar_t__ raw; } ;
typedef  TYPE_1__ MqcState ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,size_t*,int) ; 
 scalar_t__* ff_mqc_qe ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(MqcState *mqc, uint8_t *cxstate)
{
    if (mqc->raw)
        return FUNC1(mqc);
    mqc->a -= ff_mqc_qe[*cxstate];
    if ((mqc->c >> 16) < mqc->a) {
        if (mqc->a & 0x8000)
            return *cxstate & 1;
        else
            return FUNC0(mqc, cxstate, 0);
    } else {
        mqc->c -= mqc->a << 16;
        return FUNC0(mqc, cxstate, 1);
    }
}