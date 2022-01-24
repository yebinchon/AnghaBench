#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {scalar_t__ nitems; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  cpusubtype; int /*<<< orphan*/  cputype; int /*<<< orphan*/  section_order; TYPE_2__ objects; } ;
typedef  int /*<<< orphan*/  KXLDObject ;
typedef  TYPE_1__ KXLDContext ;

/* Variables and functions */
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static KXLDObject *
FUNC4(KXLDContext *context, u_char *file, u_long size,
    const char *name)
{
    KXLDObject *rval = NULL;
    KXLDObject *object = NULL;
    kern_return_t result = 0;
    u_int i = 0;

    for (i = 0; i < context->objects.nitems; ++i) {
        object = FUNC0(&context->objects, i);

        if (!FUNC1(object)) {
            result = FUNC2(object, file, size, name,
                context->section_order, context->cputype, context->cpusubtype, context->flags);
            FUNC3(result, finish);

            rval = object;
            break;
        }

        if (FUNC1(object) == file) {
            rval = object;
            break;
        }
    }

finish:
    return rval;
}