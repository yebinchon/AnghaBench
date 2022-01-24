#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int opacity; scalar_t__ mode; void* blend; } ;
typedef  TYPE_1__ FilterParams ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 scalar_t__ BLEND_NORMAL ; 
 void* blend_copybottom_16 ; 
 void* blend_copybottom_8 ; 
 void* blend_copytop_16 ; 
 void* blend_copytop_8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(FilterParams *param, int depth)
{
    switch (depth) {
    case 8:
        FUNC4(param);
        break;
    case 9:
        FUNC5(param);
        break;
    case 10:
        FUNC1(param);
        break;
    case 12:
        FUNC2(param);
        break;
    case 16:
        FUNC3(param);
        break;
    }

    if (param->opacity == 0 && param->mode != BLEND_NORMAL) {
        param->blend = depth > 8 ? blend_copytop_16 : blend_copytop_8;
    } else if (param->mode == BLEND_NORMAL) {
        if (param->opacity == 1)
            param->blend = depth > 8 ? blend_copytop_16 : blend_copytop_8;
        else if (param->opacity == 0)
            param->blend = depth > 8 ? blend_copybottom_16 : blend_copybottom_8;
    }

    if (ARCH_X86)
        FUNC0(param, depth);
}