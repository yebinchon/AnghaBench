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
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long long) ; 

__attribute__((used)) static void FUNC3(AVIOContext *pb, uint64_t num, int bytes)
{
    int i, needed_bytes = FUNC2(num);

    // sizes larger than this are currently undefined in EBML
    FUNC0(num < (1ULL << 56) - 1);

    if (bytes == 0)
        // don't care how many bytes are used, so use the min
        bytes = needed_bytes;
    // the bytes needed to write the given size would exceed the bytes
    // that we need to use, so write unknown size. This shouldn't happen.
    FUNC0(bytes >= needed_bytes);

    num |= 1ULL << bytes * 7;
    for (i = bytes - 1; i >= 0; i--)
        FUNC1(pb, (uint8_t)(num >> i * 8));
}