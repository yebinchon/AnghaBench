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
struct TYPE_6__ {int /*<<< orphan*/  gb; scalar_t__ mspel; } ;
struct TYPE_5__ {int /*<<< orphan*/  hshift; TYPE_2__ s; } ;
typedef  TYPE_1__ Wmv2Context ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (TYPE_2__* const,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(Wmv2Context *w, int *mx_ptr, int *my_ptr)
{
    MpegEncContext *const s = &w->s;
    int ret;

    ret = FUNC0(s, mx_ptr, my_ptr);

    if (ret < 0)
        return ret;

    if ((((*mx_ptr) | (*my_ptr)) & 1) && s->mspel)
        w->hshift = FUNC1(&s->gb);
    else
        w->hshift = 0;

    return 0;
}