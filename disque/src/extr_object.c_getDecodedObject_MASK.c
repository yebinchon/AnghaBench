#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ OBJ_STRING ; 
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,long) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

robj *FUNC6(robj *o) {
    robj *dec;

    if (FUNC3(o)) {
        FUNC1(o);
        return o;
    }
    if (o->type == OBJ_STRING && o->encoding == OBJ_ENCODING_INT) {
        char buf[32];

        FUNC2(buf,32,(long)o->ptr);
        dec = FUNC0(buf,FUNC5(buf));
        return dec;
    } else {
        FUNC4("Unknown encoding type");
    }
}