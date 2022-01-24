#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * ff_scene_sad_fn ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int /*<<< orphan*/ * ff_scene_sad16_c ; 
 int /*<<< orphan*/ * ff_scene_sad_c ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 

ff_scene_sad_fn FUNC1(int depth)
{
    ff_scene_sad_fn sad = NULL;
    if (ARCH_X86)
        sad = FUNC0(depth);
    if (!sad) {
        if (depth == 8)
            sad = ff_scene_sad_c;
        if (depth == 16)
            sad = ff_scene_sad16_c;
    }
    return sad;
}