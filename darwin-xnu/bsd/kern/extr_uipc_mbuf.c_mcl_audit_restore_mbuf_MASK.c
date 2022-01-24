#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {scalar_t__ m_flags; int /*<<< orphan*/  m_type; struct mbuf* m_next; } ;
struct TYPE_4__ {scalar_t__ mca_contents_size; } ;
typedef  TYPE_1__ mcache_audit_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ AUDIT_CONTENTS_SIZE ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MCA_SAVED_MBUF_SIZE ; 
 scalar_t__ M_EXT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC6(struct mbuf *m, mcache_audit_t *mca, boolean_t composite)
{
	struct mbuf *ms = FUNC1(mca);

	if (composite) {
		struct mbuf *next = m->m_next;
		FUNC2(ms->m_flags == M_EXT && FUNC5(ms) != NULL &&
		    FUNC0(ms));
		FUNC2(mca->mca_contents_size == AUDIT_CONTENTS_SIZE);
		/*
		 * We could have hand-picked the mbuf fields and restore
		 * them individually, but that will be a maintenance
		 * headache.  Instead, restore everything that was saved;
		 * the mbuf layer will recheck and reinitialize anyway.
		 */
		FUNC4(ms, m, MCA_SAVED_MBUF_SIZE);
		m->m_next = next;
	} else {
		/*
		 * For a regular mbuf (no cluster attached) there's nothing
		 * to restore other than the type field, which is expected
		 * to be MT_FREE.
		 */
		m->m_type = ms->m_type;
	}
	FUNC3(m);
}