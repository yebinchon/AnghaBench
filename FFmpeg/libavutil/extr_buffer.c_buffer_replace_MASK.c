#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  refcount; struct TYPE_6__* buffer; } ;
typedef  TYPE_1__ AVBufferRef ;
typedef  TYPE_1__ AVBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  memory_order_acq_rel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(AVBufferRef **dst, AVBufferRef **src)
{
    AVBuffer *b;

    b = (*dst)->buffer;

    if (src) {
        **dst = **src;
        FUNC1(src);
    } else
        FUNC1(dst);

    if (FUNC0(&b->refcount, -1, memory_order_acq_rel) == 1) {
        b->free(b->opaque, b->data);
        FUNC1(&b);
    }
}