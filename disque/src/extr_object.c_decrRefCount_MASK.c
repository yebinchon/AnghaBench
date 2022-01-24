#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int refcount; int type; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
#define  OBJ_STRING 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(robj *o) {
    if (o->refcount <= 0) FUNC1("decrRefCount against refcount <= 0");
    if (o->refcount == 1) {
        switch(o->type) {
        case OBJ_STRING: FUNC0(o); break;
        default: FUNC1("Unknown object type"); break;
        }
        FUNC2(o);
    } else {
        o->refcount--;
    }
}