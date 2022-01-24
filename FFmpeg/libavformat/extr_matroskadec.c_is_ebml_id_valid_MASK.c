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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(uint32_t id)
{
    // Due to endian nonsense in Matroska, the highest byte with any bits set
    // will contain the leading length bit. This bit in turn identifies the
    // total byte length of the element by its position within the byte.
    unsigned int bits = FUNC0(id);
    return id && (bits + 7) / 8 ==  (8 - bits % 8);
}