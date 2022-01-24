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
struct TYPE_7__ {scalar_t__ type; int encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
#define  OBJ_ENCODING_EMBSTR 130 
#define  OBJ_ENCODING_INT 129 
#define  OBJ_ENCODING_RAW 128 
 scalar_t__ OBJ_STRING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

robj *FUNC6(robj *o) {
    robj *d;

    FUNC4(o->type == OBJ_STRING);

    switch(o->encoding) {
    case OBJ_ENCODING_RAW:
        return FUNC2(o->ptr,FUNC3(o->ptr));
    case OBJ_ENCODING_EMBSTR:
        return FUNC0(o->ptr,FUNC3(o->ptr));
    case OBJ_ENCODING_INT:
        d = FUNC1(OBJ_STRING, NULL);
        d->encoding = OBJ_ENCODING_INT;
        d->ptr = o->ptr;
        return d;
    default:
        FUNC5("Wrong encoding.");
        break;
    }
}