#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ idx; TYPE_1__* symtab; scalar_t__ (* test ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_4__ syms; } ;
typedef  TYPE_2__ KXLDSymtabIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

u_int
FUNC3(const KXLDSymtabIterator *iter)
{
    u_int idx = 0;
    u_int count = 0;

    FUNC0(iter);

    for (idx = iter->idx; idx < iter->symtab->syms.nitems; ++idx) {
        count += iter->test(FUNC1(&iter->symtab->syms, idx));
    }

    return count;
}