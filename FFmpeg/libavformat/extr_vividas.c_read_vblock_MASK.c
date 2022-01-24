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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int*,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8_t *FUNC6(AVIOContext *src, uint32_t *size,
                            uint32_t key, uint32_t *k2, int align)
{
    uint8_t tmp[4];
    uint8_t *buf;
    unsigned n;

    if (FUNC2(src, tmp, 4) != 4)
        return NULL;

    FUNC3(tmp, tmp, 4, key, k2, align);

    n = FUNC4(tmp, 4);
    if (n < 4)
        return NULL;

    buf = FUNC1(n);
    if (!buf)
        return NULL;

    *size = n;
    n -= 4;

    FUNC5(buf, tmp, 4);

    if (FUNC2(src, buf + 4, n) == n) {
        FUNC3(buf + 4, buf + 4, n, key, k2, align);
    } else {
        FUNC0(buf);
        buf = NULL;
    }

    return buf;
}