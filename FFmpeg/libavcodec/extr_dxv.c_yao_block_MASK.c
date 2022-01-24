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

__attribute__((used)) static int FUNC1(uint8_t *plane0, ptrdiff_t stride0,
                     uint8_t *plane3, ptrdiff_t stride1,
                     const uint8_t *block)
{
    uint8_t yo_indices[16];
    uint8_t a_indices[16];

    FUNC0(plane0,      yo_indices, stride0, block);
    FUNC0(plane3,      a_indices,  stride1, block + 8);
    FUNC0(plane0 + 4,  yo_indices, stride0, block + 16);
    FUNC0(plane3 + 4,  a_indices,  stride1, block + 24);
    FUNC0(plane0 + 8,  yo_indices, stride0, block + 32);
    FUNC0(plane3 + 8,  a_indices,  stride1, block + 40);
    FUNC0(plane0 + 12, yo_indices, stride0, block + 48);
    FUNC0(plane3 + 12, a_indices,  stride1, block + 56);

    return 64;
}