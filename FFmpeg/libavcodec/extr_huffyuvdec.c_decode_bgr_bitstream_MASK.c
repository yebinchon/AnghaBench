#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bitstream_bpp; scalar_t__ decorrelate; } ;
typedef  TYPE_1__ HYuvContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static void FUNC1(HYuvContext *s, int count)
{
    if (s->decorrelate) {
        if (s->bitstream_bpp == 24)
            FUNC0(s, count, 1, 0);
        else
            FUNC0(s, count, 1, 1);
    } else {
        if (s->bitstream_bpp == 24)
            FUNC0(s, count, 0, 0);
        else
            FUNC0(s, count, 0, 1);
    }
}