#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int depth; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ hb_preset_index_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const*,int) ; 

hb_preset_index_t* FUNC2(const int *index, int depth)
{
    hb_preset_index_t *path;
    path = FUNC0(1, sizeof(hb_preset_index_t));
    path->depth = depth;
    if (index != NULL)
        FUNC1(path->index, index, depth * sizeof(int));
    return path;
}