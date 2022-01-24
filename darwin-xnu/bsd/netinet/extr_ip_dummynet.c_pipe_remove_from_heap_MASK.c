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
struct dn_pipe {int dummy; } ;
struct dn_heap {scalar_t__ elements; TYPE_1__* p; } ;
struct TYPE_2__ {struct dn_pipe* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dn_heap*) ; 

__attribute__((used)) static void
FUNC1(struct dn_heap *h, struct dn_pipe *p)
{
    if (h->elements > 0) {
	int i = 0 ;
	for (i=0; i < h->elements ; i++ ) {
	    if (h->p[i].object == p) { /* found it */
		h->elements-- ;
		h->p[i] = h->p[h->elements] ;
		FUNC0(h);
		break ;
	    }
	}
    }
}