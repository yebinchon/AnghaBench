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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_4__ {int /*<<< orphan*/  relocs; scalar_t__ reserved2; scalar_t__ reserved1; scalar_t__ align; scalar_t__ flags; scalar_t__ size; scalar_t__ link_addr; scalar_t__ base_addr; int /*<<< orphan*/ * data; int /*<<< orphan*/  segname; int /*<<< orphan*/  sectname; scalar_t__ allocated; } ;
typedef  TYPE_1__ KXLDSect ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(KXLDSect *sect)
{
    FUNC1(sect);

    if (sect->allocated) {
        FUNC3(sect->data, (u_long) sect->size);
        sect->allocated = FALSE;
    }

    FUNC0(sect->sectname, sizeof(sect->sectname));
    FUNC0(sect->segname, sizeof(sect->segname));
    sect->data = NULL;
    sect->base_addr = 0;
    sect->link_addr = 0;
    sect->size = 0;
    sect->flags = 0;
    sect->align = 0;
    sect->reserved1 = 0;
    sect->reserved2 = 0;
    FUNC2(&sect->relocs);
}