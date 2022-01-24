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
struct TYPE_4__ {int /*<<< orphan*/  sects; scalar_t__ initprot; scalar_t__ maxprot; scalar_t__ flags; scalar_t__ vmsize; scalar_t__ link_addr; scalar_t__ base_addr; int /*<<< orphan*/  segname; } ;
typedef  TYPE_1__ KXLDSeg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(KXLDSeg *seg)
{
    FUNC1(seg);

    FUNC0(seg->segname, sizeof(seg->segname));
    seg->base_addr = 0;
    seg->link_addr = 0;
    seg->vmsize = 0;
    seg->flags = 0;
    seg->maxprot = 0;
    seg->initprot = 0;

    /* Don't clear the individual sections here because kxld_kext.c will take
     * care of that.
     */
    FUNC2(&seg->sects);
}