#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  refcount; } ;
typedef  TYPE_2__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 

AVBufferRef *FUNC2(AVBufferRef *buf)
{
    AVBufferRef *ret = FUNC1(sizeof(*ret));

    if (!ret)
        return NULL;

    *ret = *buf;

    FUNC0(&buf->buffer->refcount, 1, memory_order_relaxed);

    return ret;
}