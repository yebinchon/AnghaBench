#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* elem; struct TYPE_3__** child; } ;
typedef  TYPE_1__ AVTreeNode ;

/* Variables and functions */

void FUNC0(AVTreeNode *t, void *opaque,
                       int (*cmp)(void *opaque, void *elem),
                       int (*enu)(void *opaque, void *elem))
{
    if (t) {
        int v = cmp ? cmp(opaque, t->elem) : 0;
        if (v >= 0)
            FUNC0(t->child[0], opaque, cmp, enu);
        if (v == 0)
            enu(opaque, t->elem);
        if (v <= 0)
            FUNC0(t->child[1], opaque, cmp, enu);
    }
}