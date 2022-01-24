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
struct TYPE_5__ {scalar_t__ type; scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ ERANGE ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 scalar_t__ OBJ_STRING ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (long double) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 long double FUNC5 (scalar_t__,char**) ; 

int FUNC6(robj *o, long double *target) {
    long double value;
    char *eptr;

    if (o == NULL) {
        value = 0;
    } else {
        FUNC3(NULL,o,o->type == OBJ_STRING);
        if (FUNC2(o)) {
            errno = 0;
            value = FUNC5(o->ptr, &eptr);
            if (FUNC1(((char*)o->ptr)[0]) || eptr[0] != '\0' ||
                errno == ERANGE || FUNC0(value))
                return C_ERR;
        } else if (o->encoding == OBJ_ENCODING_INT) {
            value = (long)o->ptr;
        } else {
            FUNC4("Unknown string encoding");
        }
    }
    *target = value;
    return C_OK;
}