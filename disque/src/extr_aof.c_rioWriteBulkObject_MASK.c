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
struct TYPE_4__ {scalar_t__ encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_INT ; 
 int FUNC0 (int /*<<< orphan*/ *,long) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(rio *r, robj *obj) {
    /* Avoid using getDecodedObject to help copy-on-write (we are often
     * in a child process when this function is called). */
    if (obj->encoding == OBJ_ENCODING_INT) {
        return FUNC0(r,(long)obj->ptr);
    } else if (FUNC2(obj)) {
        return FUNC1(r,obj->ptr,FUNC3(obj->ptr));
    } else {
        FUNC4("Unknown string encoding");
    }
}