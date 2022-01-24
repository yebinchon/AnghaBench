#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_10__ {scalar_t__ maxitems; } ;
struct TYPE_9__ {struct TYPE_9__* kext; int /*<<< orphan*/  vtables_by_name; int /*<<< orphan*/  obsolete_symbols_by_name; int /*<<< orphan*/  defined_cxx_symbols_by_value; int /*<<< orphan*/  defined_symbols_by_name; TYPE_6__ dependencies; TYPE_6__ objects; } ;
typedef  int /*<<< orphan*/  KXLDObject ;
typedef  TYPE_1__ KXLDKext ;
typedef  TYPE_1__ KXLDContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 void* FUNC2 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(KXLDContext *context)
{
    KXLDObject *object = NULL;
    KXLDKext *dep = NULL;
    u_int i = 0;

    FUNC0(context);

    FUNC5(context->kext);

    for (i = 0; i < context->objects.maxitems; ++i) {
        object = FUNC2(&context->objects, i);
        FUNC7(object);
    }
    FUNC1(&context->objects);

    for (i = 0; i < context->dependencies.maxitems; ++i) {
        dep = FUNC2(&context->dependencies, i);
        FUNC5(dep);
    }
    FUNC1(&context->dependencies);

    FUNC3(&context->defined_symbols_by_name);
    FUNC3(&context->defined_cxx_symbols_by_value);
    FUNC3(&context->obsolete_symbols_by_name);
    FUNC3(&context->vtables_by_name);

    FUNC4(context->kext, FUNC6());
    FUNC4(context, sizeof(*context));

    FUNC8();
}