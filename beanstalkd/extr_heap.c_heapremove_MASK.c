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
struct TYPE_6__ {size_t len; void** data; } ;
typedef  TYPE_1__ Heap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 

void *
FUNC3(Heap *h, size_t k)
{
    if (k >= h->len) {
        return 0;
    }

    void *x = h->data[k];
    h->len--;
    FUNC0(h, k, h->data[h->len]);
    FUNC1(h, k);
    FUNC2(h, k);
    return x;
}