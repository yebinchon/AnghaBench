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
typedef  int /*<<< orphan*/  uint64_t ;
struct dn_heap {int elements; scalar_t__ offset; TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dn_heap*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dn_heap*,int) ; 
 scalar_t__ FUNC4 (struct dn_heap*) ; 
 int /*<<< orphan*/  FUNC5 (struct dn_heap*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

__attribute__((used)) static void
FUNC8(struct dn_heap *h, void *obj)
{
    int child, father, maxelt = h->elements - 1 ;

    if (maxelt < 0) {
	FUNC7("dummynet: warning, extract from empty heap 0x%llx\n",
	    (uint64_t)FUNC4(h));
	return ;
    }
    father = 0 ; /* default: move up smallest child */
    if (obj != NULL) { /* extract specific element, index is at offset */
	if (h->offset <= 0)
	    FUNC6("dummynet: heap_extract from middle not supported on this heap!!!\n");
	father = *((int *)((char *)obj + h->offset)) ;
	if (father < 0 || father >= h->elements) {
	    FUNC7("dummynet: heap_extract, father %d out of bound 0..%d\n",
		father, h->elements);
	    FUNC6("dummynet: heap_extract");
	}
    }
    FUNC2(h, father);
    child = FUNC1(father) ;		/* left child */
    while (child <= maxelt) {		/* valid entry */
	if (child != maxelt && FUNC0(h->p[child+1].key, h->p[child].key) )
	    child = child+1 ;		/* take right child, otherwise left */
	h->p[father] = h->p[child] ;
	FUNC3(h, father);
	father = child ;
	child = FUNC1(child) ;   /* left child for next loop */
    }
    h->elements-- ;
    if (father != maxelt) {
	/*
	 * Fill hole with last entry and bubble up, reusing the insert code
	 */
	h->p[father] = h->p[maxelt] ;
	FUNC5(h, father, NULL); /* this one cannot fail */
    }
}