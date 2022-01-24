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
typedef  int sds ;
struct TYPE_4__ {int type; int encoding; int refcount; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ OBJ_STRING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC6(robj *o) {
    FUNC5(LL_WARNING,"Object type: %u", o->type);
    FUNC5(LL_WARNING,"Object encoding: %u", o->encoding);
    FUNC5(LL_WARNING,"Object refcount: %d", o->refcount);
    if (o->type == OBJ_STRING && FUNC0(o)) {
        FUNC5(LL_WARNING,"Object raw string len: %zu", FUNC4(o->ptr));
        if (FUNC4(o->ptr) < 4096) {
            sds repr = FUNC1(FUNC2(),o->ptr,FUNC4(o->ptr));
            FUNC5(LL_WARNING,"Object raw string content: %s", repr);
            FUNC3(repr);
        }
    }
}