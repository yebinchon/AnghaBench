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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void const*,void const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void *privdata, const void *key1,
        const void *key2)
{
    int l1,l2;
    FUNC0(privdata);

    l1 = FUNC2((sds)key1);
    l2 = FUNC2((sds)key2);
    if (l1 != l2) return 0;
    return FUNC1(key1, key2, l1) == 0;
}