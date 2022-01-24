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
struct TYPE_5__ {unsigned int end; unsigned int buffer; } ;
typedef  TYPE_1__ AVFifoBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

int FUNC4(AVFifoBuffer *f, unsigned int size)
{
    unsigned int old_size = f->end - f->buffer;
    if(size + (unsigned)FUNC3(f) < size)
        return FUNC0(EINVAL);

    size += FUNC3(f);

    if (old_size < size)
        return FUNC2(f, FUNC1(size, 2*old_size));
    return 0;
}