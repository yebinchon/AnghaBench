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
struct TYPE_3__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(MpegEncContext *s, int buf_size)
{
    int pos = FUNC0(&s->gb) >> 3;
    if (pos == 0)
        pos = 1;      // avoid infinite loops (i doubt that is needed but ...)
    if (pos + 10 > buf_size)
        pos = buf_size;               // oops ;)

    return pos;
}