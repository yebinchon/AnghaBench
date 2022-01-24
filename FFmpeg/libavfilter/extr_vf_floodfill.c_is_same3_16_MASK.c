#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(AVFrame *frame, int x, int y,
                       unsigned s0, unsigned s1, unsigned s2, unsigned s3)
{
    unsigned c0 = FUNC0(frame->data[0] + y * frame->linesize[0] + 2 * x);
    unsigned c1 = FUNC0(frame->data[1] + y * frame->linesize[1] + 2 * x);
    unsigned c2 = FUNC0(frame->data[2] + y * frame->linesize[2] + 2 * x);

    if (s0 == c0 && s1 == c1 && s2 == c2)
        return 1;
    return 0;
}