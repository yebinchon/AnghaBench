#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_6__ {unsigned char* ptr; scalar_t__ encoding; } ;
typedef  TYPE_1__ robj ;

/* Variables and functions */
 scalar_t__ OBJ_ENCODING_INT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (unsigned char*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char*,int,long) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

unsigned int FUNC6(const void *key) {
    robj *o = (robj*) key;

    if (FUNC4(o)) {
        return FUNC1(o->ptr, FUNC5((sds)o->ptr));
    } else {
        if (o->encoding == OBJ_ENCODING_INT) {
            char buf[32];
            int len;

            len = FUNC3(buf,32,(long)o->ptr);
            return FUNC1((unsigned char*)buf, len);
        } else {
            unsigned int hash;

            o = FUNC2(o);
            hash = FUNC1(o->ptr, FUNC5((sds)o->ptr));
            FUNC0(o);
            return hash;
        }
    }
}