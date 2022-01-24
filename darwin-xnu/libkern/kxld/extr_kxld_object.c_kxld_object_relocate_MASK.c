#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kxld_addr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {scalar_t__ nitems; } ;
struct TYPE_5__ {int /*<<< orphan*/  sects; int /*<<< orphan*/  symtab; TYPE_3__ segs; int /*<<< orphan*/  link_addr; } ;
typedef  int /*<<< orphan*/  KXLDSeg ;
typedef  TYPE_1__ KXLDObject ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC5(KXLDObject *object, kxld_addr_t link_address)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSeg *seg = NULL;
    u_int i = 0;

    FUNC0(object);

    object->link_addr = link_address;

    /* Relocate segments (which relocates the sections) */
    for (i = 0; i < object->segs.nitems; ++i) {
        seg = FUNC1(&object->segs, i);
        FUNC2(seg, link_address);
    } // for...

    /* Relocate symbols */
    rval = FUNC3(object->symtab, &object->sects);
    FUNC4(rval, finish);

    rval = KERN_SUCCESS;
finish:
   return rval;
}