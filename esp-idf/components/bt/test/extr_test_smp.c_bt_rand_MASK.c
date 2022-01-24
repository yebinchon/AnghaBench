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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,size_t) ; 

__attribute__((used)) static void FUNC3(void *buf, size_t len)
{
    if (!len) {
        return;
    }
    // Reset the buf value to the fixed value.
    FUNC2(buf, 0x55, len);

    for (int i = 0; i < (int)(len / sizeof(uint32_t)); i++) {
        uint32_t rand = FUNC0();
        FUNC1(buf + i*sizeof(uint32_t), &rand, sizeof(uint32_t));
    }

    return;
}