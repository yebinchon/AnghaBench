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
struct TYPE_5__ {size_t len; size_t cap; void** data; } ;
typedef  TYPE_1__ Heap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 void** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 

int
FUNC5(Heap *h, void *x)
{
    if (h->len == h->cap) {
        void **ndata;
        size_t ncap = (h->len+1) * 2; /* allocate twice what we need */

        ndata = FUNC1(sizeof(void*) * ncap);
        if (!ndata) {
            return 0;
        }

        FUNC2(ndata, h->data, sizeof(void*) * h->len);
        FUNC0(h->data);
        h->data = ndata;
        h->cap = ncap;
    }

    size_t k = h->len;
    h->len++;
    FUNC3(h, k, x);
    FUNC4(h, k);
    return 1;
}