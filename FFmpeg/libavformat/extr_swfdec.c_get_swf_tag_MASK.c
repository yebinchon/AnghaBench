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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, int *len_ptr)
{
    int tag, len;

    if (FUNC0(pb))
        return AVERROR_EOF;

    tag = FUNC1(pb);
    len = tag & 0x3f;
    tag = tag >> 6;
    if (len == 0x3f) {
        len = FUNC2(pb);
    }
    *len_ptr = len;
    return tag;
}