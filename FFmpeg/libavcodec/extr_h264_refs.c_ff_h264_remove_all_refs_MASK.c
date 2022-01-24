#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* f; } ;
struct TYPE_11__ {scalar_t__ long_ref_count; int short_ref_count; int /*<<< orphan*/  default_ref; int /*<<< orphan*/ ** short_ref; TYPE_6__ last_pic_for_ec; } ;
struct TYPE_10__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ H264Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(H264Context *h)
{
    int i;

    for (i = 0; i < 16; i++) {
        FUNC4(h, i, 0);
    }
    FUNC0(h->long_ref_count == 0);

    if (h->short_ref_count && !h->last_pic_for_ec.f->data[0]) {
        FUNC2(h, &h->last_pic_for_ec);
        FUNC1(h, &h->last_pic_for_ec, h->short_ref[0]);
    }

    for (i = 0; i < h->short_ref_count; i++) {
        FUNC5(h, h->short_ref[i], 0);
        h->short_ref[i] = NULL;
    }
    h->short_ref_count = 0;

    FUNC3(h->default_ref, 0, sizeof(h->default_ref));
}