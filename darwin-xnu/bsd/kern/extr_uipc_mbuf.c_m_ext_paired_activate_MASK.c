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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  ext_size; int /*<<< orphan*/ * ext_buf; } ;
struct mbuf {int m_flags; int m_type; TYPE_1__ m_ext; } ;
struct ext_ref {int dummy; } ;
typedef  int /*<<< orphan*/  m_ext_free_func_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXTF_PAIRED ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int,int) ; 
 int FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ext_ref*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*) ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 scalar_t__ FUNC6 (struct mbuf*) ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 struct ext_ref* FUNC9 (struct mbuf*) ; 

void
FUNC10(struct mbuf *m)
{
	struct ext_ref *rfa;
	int hdr, type;
	caddr_t extbuf;
	m_ext_free_func_t extfree;
	u_int extsize;

	FUNC7(FUNC1(m));
	FUNC7(FUNC6(m) == FUNC3(m));
	FUNC7(FUNC4(m) == FUNC3(m));

	hdr = (m->m_flags & M_PKTHDR);
	type = m->m_type;
	extbuf = m->m_ext.ext_buf;
	extfree = FUNC8(m);
	extsize = m->m_ext.ext_size;
	rfa = FUNC9(m);

	FUNC7(extbuf != NULL && rfa != NULL);

	/*
	 * Safe to reinitialize packet header tags, since it's
	 * already taken care of at m_free() time.  Similar to
	 * what's done in m_clattach() for the cluster.  Bump
	 * up MEXT_PREF to indicate activation.
	 */
	FUNC0(m, hdr, type);
	FUNC2(m, extbuf, extsize, extfree, (caddr_t)m, rfa,
	    1, 1, 2, EXTF_PAIRED, FUNC5(m), m);
}