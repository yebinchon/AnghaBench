#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_7__ {scalar_t__ nitems; } ;
struct TYPE_6__ {void* vtable_index_created; void* vtables_created; int /*<<< orphan*/ * interface; int /*<<< orphan*/ * kext; int /*<<< orphan*/  vtable_index; TYPE_3__ vtables; } ;
typedef  int /*<<< orphan*/  KXLDVTable ;
typedef  TYPE_1__ KXLDKext ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(KXLDKext *kext)
{
    KXLDVTable *vtable = NULL;
    u_int i;

    FUNC0(kext);

    for (i = 0; i < kext->vtables.nitems; ++i) {
        vtable = FUNC1(&kext->vtables, i);
        FUNC4(vtable);
    }
    FUNC2(&kext->vtables);
    FUNC3(&kext->vtable_index);

    kext->kext = NULL;
    kext->interface = NULL;
    kext->vtables_created = FALSE;
    kext->vtable_index_created = FALSE;
}