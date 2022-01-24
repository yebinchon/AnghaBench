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
struct TYPE_2__ {int /*<<< orphan*/ * ext_buf; } ;
struct mbuf {TYPE_1__ m_ext; } ;
struct ext_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ *,struct ext_ref*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 struct ext_ref* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ext_ref*) ; 
 int /*<<< orphan*/  ref_cache ; 

struct mbuf *
FUNC5(struct mbuf *m, int wait)
{
	struct ext_ref *rfa;

	if ((rfa = FUNC3(ref_cache, FUNC1(wait))) == NULL)
		return (m);

	m->m_ext.ext_buf = FUNC2(wait);
	if (m->m_ext.ext_buf != NULL) {
		FUNC0(m, m->m_ext.ext_buf, rfa, 1, 0);
	} else {
		FUNC4(ref_cache, rfa);
	}
	return (m);
}