#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf_stailq_t ;
struct TYPE_7__ {scalar_t__ owner; } ;
typedef  TYPE_1__ buf_desc_t ;
struct TYPE_8__ {int /*<<< orphan*/  recv_link_list; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ * const) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ context ; 
 int /*<<< orphan*/  qe ; 

__attribute__((used)) static inline buf_desc_t* FUNC2(void)
{
    buf_stailq_t *const queue = &context.recv_link_list;
    buf_desc_t *desc = FUNC0(queue);
    while(desc && desc->owner == 0) {
        desc = FUNC1(desc, qe);
    }
    return desc;
}