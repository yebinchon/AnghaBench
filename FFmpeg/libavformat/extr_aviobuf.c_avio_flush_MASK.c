#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ buf_ptr_max; scalar_t__ buf_ptr; scalar_t__ write_flag; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(AVIOContext *s)
{
    int seekback = s->write_flag ? FUNC0(0, s->buf_ptr - s->buf_ptr_max) : 0;
    FUNC2(s);
    if (seekback)
        FUNC1(s, seekback, SEEK_CUR);
}