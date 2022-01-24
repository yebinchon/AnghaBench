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
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(uint8_t *dst, ptrdiff_t stride,
                    uint8_t *unused0, ptrdiff_t unused1,
                    const uint8_t *block)
{
    uint8_t yo_indices[16];

    FUNC0(dst,      yo_indices, stride, block);
    FUNC0(dst + 4,  yo_indices, stride, block + 8);
    FUNC0(dst + 8,  yo_indices, stride, block + 16);
    FUNC0(dst + 12, yo_indices, stride, block + 24);

    return 32;
}