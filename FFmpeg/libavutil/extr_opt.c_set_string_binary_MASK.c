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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(void *obj, const AVOption *o, const char *val, uint8_t **dst)
{
    int *lendst = (int *)(dst + 1);
    uint8_t *bin, *ptr;
    int len;

    FUNC2(dst);
    *lendst = 0;

    if (!val || !(len = FUNC5(val)))
        return 0;

    if (len & 1)
        return FUNC0(EINVAL);
    len /= 2;

    ptr = bin = FUNC3(len);
    if (!ptr)
        return FUNC0(ENOMEM);
    while (*val) {
        int a = FUNC4(*val++);
        int b = FUNC4(*val++);
        if (a < 0 || b < 0) {
            FUNC1(bin);
            return FUNC0(EINVAL);
        }
        *ptr++ = (a << 4) | b;
    }
    *dst    = bin;
    *lendst = len;

    return 0;
}