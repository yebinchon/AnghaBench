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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int INT_MAX ; 
 void* FUNC2 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void *FUNC4(void **array, size_t elsize,
                              int *size, int *max_size)
{
    void *ret;

    if (*size == *max_size) {
        int m = FUNC0(32, FUNC1(*max_size, INT_MAX / 2) * 2);
        if (*size >= m)
            return NULL;
        *array = FUNC2(*array, m, elsize);
        if (!*array)
            return NULL;
        *max_size = m;
    }
    ret = (char *)*array + elsize * *size;
    FUNC3(ret, 0, elsize);
    (*size)++;
    return ret;
}