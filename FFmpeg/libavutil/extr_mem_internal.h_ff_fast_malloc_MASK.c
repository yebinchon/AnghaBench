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
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,void**,int) ; 

__attribute__((used)) static inline int FUNC6(void *ptr, unsigned int *size, size_t min_size, int zero_realloc)
{
    void *val;

    FUNC5(&val, ptr, sizeof(val));
    if (min_size <= *size) {
        FUNC1(val || !min_size);
        return 0;
    }
    min_size = FUNC0(min_size + min_size / 16 + 32, min_size);
    FUNC2(ptr);
    val = zero_realloc ? FUNC4(min_size) : FUNC3(min_size);
    FUNC5(ptr, &val, sizeof(val));
    if (!val)
        min_size = 0;
    *size = min_size;
    return 1;
}