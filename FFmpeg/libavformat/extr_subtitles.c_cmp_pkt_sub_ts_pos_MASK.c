#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pts; scalar_t__ pos; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b)
{
    const AVPacket *s1 = a;
    const AVPacket *s2 = b;
    if (s1->pts == s2->pts)
        return FUNC0(s1->pos, s2->pos);
    return FUNC0(s1->pts , s2->pts);
}