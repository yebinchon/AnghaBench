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
struct TYPE_6__ {void* ptr; int /*<<< orphan*/  encoding; } ;
typedef  TYPE_1__ robj ;
struct TYPE_7__ {TYPE_1__** integers; } ;

/* Variables and functions */
 long long LONG_MAX ; 
 long long LONG_MIN ; 
 int /*<<< orphan*/  OBJ_ENCODING_INT ; 
 long long OBJ_SHARED_INTEGERS ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (long long) ; 
 TYPE_2__ shared ; 

robj *FUNC3(long long value) {
    robj *o;
    if (value >= 0 && value < OBJ_SHARED_INTEGERS) {
        FUNC1(shared.integers[value]);
        o = shared.integers[value];
    } else {
        if (value >= LONG_MIN && value <= LONG_MAX) {
            o = FUNC0(OBJ_STRING, NULL);
            o->encoding = OBJ_ENCODING_INT;
            o->ptr = (void*)((long)value);
        } else {
            o = FUNC0(OBJ_STRING,FUNC2(value));
        }
    }
    return o;
}