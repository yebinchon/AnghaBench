#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_7__ {scalar_t__ nitems; } ;
struct TYPE_6__ {int /*<<< orphan*/  vtables_by_name; int /*<<< orphan*/  obsolete_symbols_by_name; int /*<<< orphan*/  defined_cxx_symbols_by_value; int /*<<< orphan*/  defined_symbols_by_name; TYPE_2__ dependencies; TYPE_2__ objects; int /*<<< orphan*/ * kext; } ;
typedef  int /*<<< orphan*/  KXLDObject ;
typedef  int /*<<< orphan*/  KXLDKext ;
typedef  TYPE_1__ KXLDContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(KXLDContext *context)
{
    KXLDObject * object = NULL;
    KXLDKext   * dep     = NULL;
    u_int i = 0;

    FUNC0(context);

    FUNC4(context->kext);
    
    for (i = 0; i < context->objects.nitems; ++i) {
        object = FUNC1(&context->objects, i);
        FUNC5(object);
    }
    FUNC2(&context->objects);

    for (i = 0; i < context->dependencies.nitems; ++i) {
        dep = FUNC1(&context->dependencies, i);
        FUNC4(dep);
    }
    FUNC2(&context->dependencies);

    FUNC3(&context->defined_symbols_by_name);
    FUNC3(&context->defined_cxx_symbols_by_value);
    FUNC3(&context->obsolete_symbols_by_name);
    FUNC3(&context->vtables_by_name);
}