#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dn_heap {scalar_t__ size; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int /*<<< orphan*/  FUNC1 (struct dn_heap*,int) ; 

__attribute__((used)) static void
FUNC2(struct dn_heap *h)
{
    if (h->size >0 )
	FUNC0(h->p, M_DUMMYNET);
    FUNC1(h, sizeof(*h));
}