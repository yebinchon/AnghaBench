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
 void* FUNC1 (void*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void**,int) ; 

int FUNC3(void *ptr, size_t nmemb, size_t size)
{
    void *val;

    FUNC2(&val, ptr, sizeof(val));
    val = FUNC1(val, nmemb, size);
    FUNC2(ptr, &val, sizeof(val));
    if (!val && nmemb && size)
        return FUNC0(ENOMEM);

    return 0;
}