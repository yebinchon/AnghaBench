#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,void**,int) ; 

int FUNC4(void *ptr, size_t size)
{
    void *val;

    if (!size) {
        FUNC1(ptr);
        return 0;
    }

    FUNC3(&val, ptr, sizeof(val));
    val = FUNC2(val, size);

    if (!val) {
        FUNC1(ptr);
        return FUNC0(ENOMEM);
    }

    FUNC3(ptr, &val, sizeof(val));
    return 0;
}