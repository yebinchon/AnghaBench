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
typedef  scalar_t__ u_int16_t ;
struct pf_tags {int dummy; } ;
struct pf_tagname {scalar_t__ tag; scalar_t__ ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 struct pf_tagname* FUNC0 (struct pf_tags*) ; 
 struct pf_tagname* FUNC1 (struct pf_tagname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_tags*,struct pf_tagname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_tagname*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 

__attribute__((used)) static void
FUNC4(struct pf_tags *head, u_int16_t tag)
{
	struct pf_tagname	*p, *next;

	if (tag == 0)
		return;

	for (p = FUNC0(head); p != NULL; p = next) {
		next = FUNC1(p, entries);
		if (tag == p->tag) {
			if (--p->ref == 0) {
				FUNC2(head, p, entries);
				FUNC3(p, M_TEMP);
			}
			break;
		}
	}
}