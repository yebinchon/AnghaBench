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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pal; } ;
struct TYPE_5__ {int /*<<< orphan*/ * process; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; TYPE_2__* instance; } ;
typedef  int /*<<< orphan*/  SwsSlice ;
typedef  TYPE_1__ SwsFilterDescriptor ;
typedef  TYPE_2__ ColorContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  chr_convert ; 

int FUNC2(SwsFilterDescriptor *desc, SwsSlice * src, SwsSlice *dst, uint32_t *pal)
{
    ColorContext * li = FUNC1(sizeof(ColorContext));
    if (!li)
        return FUNC0(ENOMEM);
    li->pal = pal;
    desc->instance = li;

    desc->src =src;
    desc->dst = dst;
    desc->process = &chr_convert;

    return 0;
}