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
typedef  int /*<<< orphan*/  mcache_obj_t ;
typedef  int /*<<< orphan*/  mcache_audit_t ;
typedef  int mbuf_class_t ;
struct TYPE_2__ {int /*<<< orphan*/ ** cl_audit; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
#define  MC_16KCL 131 
#define  MC_BIGCL 130 
#define  MC_CL 129 
#define  MC_MBUF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ NBCLPG ; 
 scalar_t__ NCLPG ; 
 scalar_t__ NMBPG ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int maxclaudit ; 
 TYPE_1__* mclaudit ; 

__attribute__((used)) static mcache_audit_t *
FUNC9(mbuf_class_t class, mcache_obj_t *mobj)
{
	mcache_audit_t *mca = NULL;
	int ix = FUNC5(mobj), m_idx = 0;
	unsigned char *page_addr;

	FUNC7(ix < maxclaudit);
	FUNC7(FUNC2(mobj, FUNC4(FUNC8(class), PAGE_SIZE)));

	page_addr = FUNC6(ix);

	switch (class) {
	case MC_MBUF:
		/*
		 * For the mbuf case, find the index of the page
		 * used by the mbuf and use that index to locate the
		 * base address of the page.  Then find out the
		 * mbuf index relative to the page base and use
		 * it to locate the audit structure.
		 */
		m_idx = FUNC3(page_addr, mobj);
		FUNC7(m_idx < (int)NMBPG);
		mca = mclaudit[ix].cl_audit[m_idx];
		break;

	case MC_CL:
		/*
		 * Same thing as above, but for 2KB clusters in a page.
		 */
		m_idx = FUNC1(page_addr, mobj);
		FUNC7(m_idx < (int)NCLPG);
		mca = mclaudit[ix].cl_audit[m_idx];
		break;

	case MC_BIGCL:
		m_idx = FUNC0(page_addr, mobj);
		FUNC7(m_idx < (int)NBCLPG);
		mca = mclaudit[ix].cl_audit[m_idx];
		break;
	case MC_16KCL:
		/*
		 * Same as above, but only return the first element.
		 */
		mca = mclaudit[ix].cl_audit[0];
		break;

	default:
		FUNC7(0);
		/* NOTREACHED */
	}

	return (mca);
}