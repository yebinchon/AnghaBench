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
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ tcaches_t ;

/* Variables and functions */
 TYPE_1__* tcaches ; 
 TYPE_1__* tcaches_avail ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC1(tsd_t *tsd, unsigned ind)
{
	tcaches_t *elm = &tcaches[ind];
	FUNC0(tsd, elm);
	elm->next = tcaches_avail;
	tcaches_avail = elm;
}